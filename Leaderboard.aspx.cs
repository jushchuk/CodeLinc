using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.UI.WebControls;

public partial class Leaderboard : System.Web.UI.Page
{
    string company_name;
    UserDatabase user_db = new UserDatabase();

    protected void Page_PreRender(object sender, EventArgs e)
    {
        List<User> users;
        List<Company> companies;

        users = user_db.getTopUsersInCompany(this.company_name ?? "All");
        companies = user_db.getTopCompanies();

        this.LeaderboardRepeater.DataSource = users;
        this.LeaderboardRepeater.DataBind();

        this.CompanyLeaderboardRepeater.DataSource = companies;
        this.CompanyLeaderboardRepeater.DataBind();
    }

    protected void Page_Init(object sender, EventArgs e)
    {
        string[] comany_names = this.user_db.getCompanyNames();
        this.CompanyName.Items.Clear();
        this.CompanyName.Items.Add(new ListItem("All", "All"));
        this.CompanyName.Items.AddRange(comany_names.Select(cn => new ListItem(cn, cn)).ToArray());
    }


    protected void CompanyName_SelectedIndexChanged(object sender, EventArgs e)
    {
        this.company_name = this.CompanyName.SelectedValue;
    }
}