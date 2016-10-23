using System.Collections.Generic;
using System.Linq;
using System.IO;

public class UserDatabase
{
    public UserDatabase()
    {
        this.m_UserList = new List<User>();
        this.m_CompanyList = new List<Company>();

        using (StreamReader user_reader =
            new StreamReader(File.OpenRead(Path.Combine(Directory.GetCurrentDirectory(), "CodeLinc", "userdatabase.txt"))))
        {
            string userLine;

            while ((userLine = user_reader.ReadLine()) != null)
            { 
                this.m_UserList.Add(new User(userLine));
            }
        }

        fillCompanyList();
        calculateScores();
    }

    private void fillCompanyList()
    {
        string[] company_names = getCompanyNames();
        foreach (string company_name in company_names)
        {
            this.m_CompanyList.Add(new Company(company_name));
        }
    }

    private void calculateScores()
    {
        foreach (User user in m_UserList)
        {
            setUserScore(user);
        }

        foreach (User user in this.m_UserList)
        {
            this.m_CompanyList.FirstOrDefault(c => c.m_Name == user.m_Company).m_CompanyScore += user.m_Score;
        }
    }

    private void setUserScore(User User)
    {
        string user_name = User.m_Name;
        int score = 0;

        foreach (User user in m_UserList)
        {
            if (user.m_Referral.Equals(user_name))
            {
                score += 1;
            }
        }

        User.m_Score = score;
    }

    public List<User> getTopUsersInCompany(string Company)
    {
        List<User> top_users_in_company;

        if (Company.Equals("All"))
        {
            top_users_in_company = m_UserList.OrderByDescending(u => u.m_Score).Take(25).ToList();
        }
        else
        {
            top_users_in_company = m_UserList.Where(u => u.m_Company.Equals(Company)).OrderByDescending(u => u.m_Score).Take(25).ToList();
        }
        for (int i = 0; i < top_users_in_company.Count; i++)
        {
            top_users_in_company[i].m_Rank = i + 1;
        }

        return top_users_in_company;
    }

    public List<Company> getTopCompanies()
    {
        List<Company> top_companies;

        top_companies = m_CompanyList.OrderByDescending(c => c.m_CompanyScore).Take(25).ToList();

        for (int i = 0; i < top_companies.Count; i++)
        {
            top_companies[i].m_CompanyRank = i + 1;
        }

        return top_companies;
    }

    public string[] getCompanyNames()
    {
        List<string> company_names = new List<string>();

        foreach(User user in this.m_UserList)
        {
            if (!company_names.Contains(user.m_Company))
            {
                company_names.Add(user.m_Company);
            }
        }

        return company_names.ToArray();
    }

    private List<User> m_UserList;
    private List<Company> m_CompanyList;
}