# Openstack Contributer Container

This is a Docker Container that is loaded with the tools you will need to do openstack community work.   At times the tools you need to get going can be a PITA to say the least.   I created this container to make it easy to do community development no matter where I am. 

Here are some helpful links to get you started contributing to OpensStack

- [Developers Guide](http://docs.openstack.org/infra/manual/developers.html#starting-a-change)
- [Contributor Guide](http://docs.openstack.org/contributor-guide/quickstart/first-timers.html)
- [Submitting a change for review](http://docs.openstack.org/infra/manual/developers.html#submitting-a-change-for-review)
- [RST (docs) guild](http://docs.openstack.org/contributor-guide/rst-conv/references.html)

## Building

```shell

make build
```

### Running

This will mount your home folder under /$USER and will copy your .ssh folder under /root/.ssh
so you can interact with git.  You can also edit files on your computer and access them in the 
container via the /%USER folder.

```shell
make run

```


