<!-- Generated with Stardoc: http://skydoc.bazel.build -->

CUE rules forked from https://github.com/seh/rules_cue/blob/main/cue/cue.bzl

<a id="cue_instance"></a>

## cue_instance

<pre>
cue_instance(<a href="#cue_instance-name">name</a>, <a href="#cue_instance-ancestor">ancestor</a>, <a href="#cue_instance-deps">deps</a>, <a href="#cue_instance-directory_of">directory_of</a>, <a href="#cue_instance-package_name">package_name</a>, <a href="#cue_instance-srcs">srcs</a>)
</pre>



**ATTRIBUTES**


| Name  | Description | Type | Mandatory | Default |
| :------------- | :------------- | :------------- | :------------- | :------------- |
| <a id="cue_instance-name"></a>name |  A unique name for this target.   | <a href="https://bazel.build/concepts/labels#target-names">Name</a> | required |  |
| <a id="cue_instance-ancestor"></a>ancestor |  Containing CUE instance or module root.<br><br>This value must refer either to a dominating target using the cue_instance rule (or another rule that yields a CUEInstanceInfo provider) or a dominating target using the cue_module rule (or another rule that yields a CUEModuleInfo provider).   | <a href="https://bazel.build/concepts/labels">Label</a> | required |  |
| <a id="cue_instance-deps"></a>deps |  cue_instance targets to include in the evaluation.<br><br>These instances are those mentioned in import declarations in this instance's CUE files.   | <a href="https://bazel.build/concepts/labels">List of labels</a> | optional | <code>[]</code> |
| <a id="cue_instance-directory_of"></a>directory_of |  Directory designator to use as the instance directory.<br><br>If the given target is a directory, use that directly. If the given target is a file, use the file's containing directory.<br><br>If left unspecified, use the directory containing the first CUE file nominated in this cue_instance's "srcs" attribute.   | <a href="https://bazel.build/concepts/labels">Label</a> | optional | <code>None</code> |
| <a id="cue_instance-package_name"></a>package_name |  Name of the CUE package to load for this instance.<br><br>If left unspecified, use the basename of the containing directory as the CUE pacakge name.   | String | optional | <code>""</code> |
| <a id="cue_instance-srcs"></a>srcs |  CUE input files that are part of the nominated CUE package.   | <a href="https://bazel.build/concepts/labels">List of labels</a> | required |  |


<a id="CUEInstanceInfo"></a>

## CUEInstanceInfo

<pre>
CUEInstanceInfo(<a href="#CUEInstanceInfo-directory_path">directory_path</a>, <a href="#CUEInstanceInfo-files">files</a>, <a href="#CUEInstanceInfo-module">module</a>, <a href="#CUEInstanceInfo-package_name">package_name</a>, <a href="#CUEInstanceInfo-transitive_files">transitive_files</a>)
</pre>

Collects files and references from cue_instance targets for use in downstream consuming targets.

**FIELDS**


| Name  | Description |
| :------------- | :------------- |
| <a id="CUEInstanceInfo-directory_path"></a>directory_path |  Directory path (a "short path") to the CUE instance.    |
| <a id="CUEInstanceInfo-files"></a>files |  The CUE files defining this instance.    |
| <a id="CUEInstanceInfo-module"></a>module |  The CUE module within which this instance sits.    |
| <a id="CUEInstanceInfo-package_name"></a>package_name |  Name of the CUE package to load for this instance.    |
| <a id="CUEInstanceInfo-transitive_files"></a>transitive_files |  The set of files (including other instances) referenced by this instance.    |


<a id="CUEModuleInfo"></a>

## CUEModuleInfo

<pre>
CUEModuleInfo(<a href="#CUEModuleInfo-module_file">module_file</a>, <a href="#CUEModuleInfo-external_package_sources">external_package_sources</a>)
</pre>

Collects files from cue_module targets for use by referring cue_instance targets.

**FIELDS**


| Name  | Description |
| :------------- | :------------- |
| <a id="CUEModuleInfo-module_file"></a>module_file |  The "module.cue" file in the module directory.    |
| <a id="CUEModuleInfo-external_package_sources"></a>external_package_sources |  The set of files in this CUE module defining external packages.    |


<a id="cue_module"></a>

## cue_module

<pre>
cue_module(<a href="#cue_module-name">name</a>, <a href="#cue_module-kwargs">kwargs</a>)
</pre>



**PARAMETERS**


| Name  | Description | Default Value |
| :------------- | :------------- | :------------- |
| <a id="cue_module-name"></a>name |  <p align="center"> - </p>   |  <code>"cue.mod"</code> |
| <a id="cue_module-kwargs"></a>kwargs |  <p align="center"> - </p>   |  none |


<a id="cue_version"></a>

## cue_version

<pre>
cue_version(<a href="#cue_version-name">name</a>)
</pre>



**PARAMETERS**


| Name  | Description | Default Value |
| :------------- | :------------- | :------------- |
| <a id="cue_version-name"></a>name |  <p align="center"> - </p>   |  none |


