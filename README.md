# AAAI-27 lab website: Programming Paradigms for Building Cognitive Agents

Supplemental website for the AAAI-27 RMPL lab, live at https://jolkin.github.io/aaai27-rmpl-lab/.
The lab materials themselves are at https://gitlab.com/mit-mers/enterprise/rmpl-lab-2026.

- `site.html` — the page source. Edit this.
- `build.sh` — wraps it into `public/index.html`. Run it and commit both files.
- GitHub Pages serves the `gh-pages` branch, which is just the contents of `public/`. After
  committing, publish with:

      git push github main
      git subtree push --prefix public github gh-pages

- `.gitlab-ci.yml` — the same thing for GitLab Pages, if the site moves to the mit-mers group
  (`origin`, currently private). It needs instance runners enabled for the project.
