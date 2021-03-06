FROM ansibleplaybookbundle/apb-base:canary

LABEL "com.redhat.apb.spec"=\
"dmVyc2lvbjogMS4wCm5hbWU6IHN0YXRlLWV4YW1wbGUtYXBiCmRlc2NyaXB0aW9uOiBUaGlzIGlz\
IGEgc2FtcGxlIGFwcGxpY2F0aW9uIGdlbmVyYXRlZCBieSBhcGIgaW5pdApiaW5kYWJsZTogVHJ1\
ZQphc3luYzogcmVxdWlyZWQKbWV0YWRhdGE6CiAgZGlzcGxheU5hbWU6IHN0YXRlLWV4YW1wbGUK\
ICBkZXBlbmRlbmNpZXM6IFtdCnBsYW5zOgogIC0gbmFtZTogZGVmYXVsdAogICAgZGVzY3JpcHRp\
b246IFRoaXMgZGVmYXVsdCBwbGFuIGRlcGxveXMgc3RhdGUtZXhhbXBsZS1hcGIKICAgIGZyZWU6\
IFRydWUKICAgIG1ldGFkYXRhOiB7fQogICAgcGFyYW1ldGVyczogW10="

COPY playbooks /opt/apb/actions
COPY roles /opt/ansible/roles
RUN chmod -R g=u /opt/{ansible,apb}
USER apb
