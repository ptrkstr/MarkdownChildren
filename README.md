<div align="center">
    <img src="https://raw.githubusercontent.com/patrickbdev/MarkdownChildrenKit/develop/Assets/logo/logo.svg" width="320pt" alt="Markdown Logo with list">
    <h1 style="border-bottom: none">
      MarkdownChildren
    </h1>
  	<p>
    	A command line tool wrapper around <a href="https://github.com/patrickbdev/MarkdownChildrenKit">MarkdownChildrenKit</a>
  	</p>
</div>



## Example
GIVEN a readme.md file exists

```markdown
My favourite things are:
<!-- markdown-children:start -->
<!-- markdown-children:end -->
```

<details>
    <summary>AND it's in this directory</summary>

<img src="https://raw.githubusercontent.com/patrickbdev/MarkdownChildrenKit/develop/Assets/readme/given.png" height="300pt" alt="Directory of files and folders">
</details>

<details>
    <summary>WHEN MarkdownChildren is invoked</summary>

```bash
MarkdownChildren ~/readme.md -n useH1
```
</details>

THEN the readme.md turns into:

```markdown
My favourite things are:
<!-- markdown-children:start -->
- [Animals](animals.md)
- animals
  - pets
    - [Cats](animals/pets/cats.md)
    - [Dogs](animals/pets/dogs.md)
  - zoo
    - [Tiger](animals/zoo/tiger.md)
- [Clothes](clothes.md)
- clothes
  - summer
    - [Dress](clothes/summer/dress.md)
    - [Hat](clothes/summer/hat.md)
  - winter
    - [Jumper](clothes/winter/jumper.md)
    - [Pants](clothes/winter/pants.md)
<!-- markdown-children:end -->
```

## Installation

Visit [releases](https://github.com/patrickbdev/MarkdownChildren/releases) and download the command line tool or get the latest by doing the following:

1. Clone the repo
1. Open `MarkdownChildren.xcodeproj`
1. Wait for Swift Package Depedencies to resolve
1. Build (CMD+B)
1. Right click `Products > MarkdownChildren`, select `Show in Finder`
1. `cd` your terminal to this directory

## Usage

- Run `./MarkdownChildren <location of root markdown file>`  
- Run `./MarkdownChildren -h` for all options 

## TODO

- [ ] Use github actions to create downloadable releases  
- [ ] Research best way to provide version info via `-v`
