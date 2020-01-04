# stack-www
`stack-www` is a simple tool to keep record of interesting readings or podcasts for later reference. Data is stored in a XML file, processed to HTML via XSLT and served by a dockerised nginx server.

## Usage
### Dependencies
`stack-www` requires `xsltproc` to be installed on your (host) system. On Debian, type `apt-get install xsltproc`.
### Conversion
Add your records to `data.xml` and then type `make`.
### Docker
Build the docker image with: `docker build . -t stack/stack-www`
Run the process with:
```
docker run --name stack-www -v `pwd`/www:/usr/share/nginx/html:ro -d -p 80:80 stack/stack-www
```
The page is available at your [localhost](http://localhost:80) address.
