import pydmt.helpers.signature

project_github_username = "veltzer"
project_name = "demos-bash"
github_repo_name = project_name
project_website = f"https://{project_github_username}.github.io/{project_name}"
project_website_source = f"https://github.com/{project_github_username}/{project_name}"
project_website_git = f"git://github.com/{project_github_username}/{project_name}.git"
project_website_download_ppa = "https://launchpanet/~mark-veltzer/+archive/ubuntu/ppa"
project_website_download_src = project_website_source
project_description_short = "demos for the bash programming language"
project_description_long = "TBD"
project_keywords = [
    "click",
    "argparse",
    "optparse",
    "command-line-parser",
    "configuration",
]
project_license = "MIT"
project_year_started = 2015

project_copyright_years_long = pydmt.helpers.signature.get_copyright_years_long(project_year_started)
project_copyright_years_short = pydmt.helpers.signature.get_copyright_years_short(project_year_started)
