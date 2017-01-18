<map version="freeplane 1.5.9">
<!--To view this file, download free mind mapping software Freeplane from http://freeplane.sourceforge.net -->
<attribute_registry SHOW_ATTRIBUTES="hide"/>
<node TEXT="Import OPML to selected node" FOLDED="false" ID="ID_1723255651" CREATED="1283093380553" MODIFIED="1484722227813" LINK="https://github.com/adxsoft/ImportOPMLtoselectednode.addon" BACKGROUND_COLOR="#97c7dc">
<font SIZE="16" BOLD="true" ITALIC="true"/>
<hook NAME="MapStyle">
    <properties show_icon_for_attributes="true" fit_to_viewport="false;" show_note_icons="true"/>

<map_styles>
<stylenode LOCALIZED_TEXT="styles.root_node" STYLE="oval" UNIFORM_SHAPE="true" VGAP_QUANTITY="24.0 pt">
<font SIZE="24"/>
<stylenode LOCALIZED_TEXT="styles.predefined" POSITION="right" STYLE="bubble">
<stylenode LOCALIZED_TEXT="default" MAX_WIDTH="600.0 px" COLOR="#000000" STYLE="as_parent">
<font NAME="SansSerif" SIZE="10" BOLD="false" ITALIC="false"/>
</stylenode>
<stylenode LOCALIZED_TEXT="defaultstyle.details"/>
<stylenode LOCALIZED_TEXT="defaultstyle.attributes">
<font SIZE="9"/>
</stylenode>
<stylenode LOCALIZED_TEXT="defaultstyle.note"/>
<stylenode LOCALIZED_TEXT="defaultstyle.floating">
<edge STYLE="hide_edge"/>
<cloud COLOR="#f0f0f0" SHAPE="ROUND_RECT"/>
</stylenode>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.user-defined" POSITION="right" STYLE="bubble">
<stylenode LOCALIZED_TEXT="styles.topic" COLOR="#18898b" STYLE="fork">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.subtopic" COLOR="#cc3300" STYLE="fork">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.subsubtopic" COLOR="#669900">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.important">
<icon BUILTIN="yes"/>
</stylenode>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.AutomaticLayout" POSITION="right" STYLE="bubble">
<stylenode LOCALIZED_TEXT="AutomaticLayout.level.root" COLOR="#000000">
<font SIZE="18"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,1" COLOR="#0033ff">
<font SIZE="16"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,2" COLOR="#00b439">
<font SIZE="14"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,3" COLOR="#990000">
<font SIZE="12"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,4" COLOR="#111111">
<font SIZE="10"/>
</stylenode>
</stylenode>
</stylenode>
</map_styles>
</hook>
<hook NAME="AutomaticEdgeColor" COUNTER="11" RULE="ON_BRANCH_CREATION"/>
<attribute NAME="name" VALUE="ImportOPMLtoselectednode"/>
<attribute NAME="link" VALUE="https://github.com/adxsoft/ImportOPMLtoselectednode.addon" OBJECT="java.net.URI|https://github.com/adxsoft/ImportOPMLtoselectednode.addon"/>
<attribute NAME="version" VALUE="v0.01"/>
<attribute NAME="author" VALUE="adxsoft (Allan)"/>
<attribute NAME="freeplaneVersionFrom" VALUE="v1.3.5"/>
<attribute NAME="freeplaneVersionTo" VALUE=""/>
<richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      The homepage of this add-on should be set as the link of the root node.
    </p>
    <p>
      The basic properties of this add-on. They can be used in script names and other attributes, e.g. &quot;${name}.groovy&quot;.
    </p>
    <ul>
      <li>
        name: The name of the add-on, normally a technically one (no spaces, no special characters except _.-).
      </li>
      <li>
        author: Author's name(s) and (optionally) email adresses.
      </li>
      <li>
        version: Since it's difficult to protect numbers like 1.0 from Freeplane's number parser it's advised to prepend a 'v' to the number, e.g. 'v1.0'.
      </li>
      <li>
        freeplane-version-from: The oldest compatible Freeplane version. The add-on will not be installed if the Freeplane version is too old.
      </li>
      <li>
        freeplane-version-to: Normally empty: The newest compatible Freeplane version. The add-on will not be installed if the Freeplane version is too new.
      </li>
    </ul>
  </body>
</html>
</richcontent>
<node TEXT="scripts" POSITION="right" ID="ID_1694956411" CREATED="1381771547809" MODIFIED="1385408757667">
<edge COLOR="#00007c"/>
<richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      An add-on may contain multiple scripts. The node text defines the script name (e.g. inserInlineImage.groovy). Its properties have to be configured via attributes:
    </p>
    <p>
      
    </p>
    <p>
      * menuLocation: &lt;locationkey&gt;
    </p>
    <p>
      &#160;&#160;&#160;- Defines where the menu location.
    </p>
    <p>
      &#160;&#160;&#160;-&#160;See mindmapmodemenu.xml for how the menu locations look like.
    </p>
    <p>
      &#160;&#160;&#160;- http://freeplane.bzr.sf.net/bzr/freeplane/freeplane_program/trunk/annotate/head%3A/freeplane/resources/xml/mindmapmodemenu.xml
    </p>
    <p>
      &#160;&#160;&#160;- This attribute is mandatory
    </p>
    <p>
      
    </p>
    <p>
      * menuTitleKey: &lt;key&gt;
    </p>
    <p>
      &#160;&#160;&#160;- The menu item title will be looked up under the translation key &lt;key&gt; - don't forget to define its translation.
    </p>
    <p>
      &#160;&#160;&#160;- This attribute is mandatory
    </p>
    <p>
      
    </p>
    <p>
      * executionMode: &lt;mode&gt;
    </p>
    <p>
      &#160;&#160;&#160;- The execution mode as described in the Freeplane wiki (http://freeplane.sourceforge.net/wiki/index.php/Scripting)
    </p>
    <p>
      &#160;&#160;&#160;- ON_SINGLE_NODE: Execute the script once. The <i>node</i>&#160;variable is set to the selected node.
    </p>
    <p>
      &#160;&#160;&#160;- ON_SELECTED_NODE: Execute the script n times for n selected nodes, once for each node.
    </p>
    <p>
      &#160;&#160;&#160;- ON_SELECTED_NODE_RECURSIVELY: Execute the script on every selected node and recursively on all of its children.
    </p>
    <p>
      &#160;&#160;&#160;- In doubt use ON_SINGLE_NODE.
    </p>
    <p>
      &#160;&#160;&#160;- This attribute is mandatory
    </p>
    <p>
      
    </p>
    <p>
      * keyboardShortcut: &lt;shortcut&gt;
    </p>
    <p>
      &#160;&#160;&#160;- Optional: keyboard combination / accelerator for this script, e.g. control alt I
    </p>
    <p>
      &#160;&#160;&#160;- Use lowercase letters for modifiers and uppercase for letters. Use no + signs.
    </p>
    <p>
      &#160;&#160;&#160;- The available key names are listed at http://download.oracle.com/javase/1.4.2/docs/api/java/awt/event/KeyEvent.html#VK_0
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;In the list only entries with a 'VK_' prefix count. Omit the prefix in the shortcut definition.
    </p>
    <p>
      
    </p>
    <p>
      * Permissions&#160;that the script(s) require, each either false or true:
    </p>
    <p>
      &#160;&#160;&#160;- execute_scripts_without_asking
    </p>
    <p>
      &#160;&#160;&#160;- execute_scripts_without_file_restriction: permission to read files
    </p>
    <p>
      &#160;&#160;&#160;- execute_scripts_without_write_restriction: permission to create/change/delete files
    </p>
    <p>
      &#160;&#160;&#160;- execute_scripts_without_exec_restriction: permission to execute other programs
    </p>
    <p>
      &#160;&#160;&#160;- execute_scripts_without_network_restriction: permission to access the network
    </p>
    <p>
      &#160;&#160;Notes:
    </p>
    <p>
      &#160;&#160;- The set of permissions is fixed.
    </p>
    <p>
      &#160;&#160;- Don't change the attribute names, don't omit one.
    </p>
    <p>
      &#160;&#160;- Set the values either to true or to false
    </p>
    <p>
      &#160;&#160;- In any case set execute_scripts_without_asking to true unless you want to annoy users.
    </p>
  </body>
</html>
</richcontent>
<node TEXT="ImportOPMLtoselectednode.groovy" FOLDED="true" ID="ID_1884275784" CREATED="1375422555989" MODIFIED="1484695129036">
<attribute_layout NAME_WIDTH="258.2999876832968 pt" VALUE_WIDTH="285.2999863958365 pt"/>
<attribute NAME="menuTitleKey" VALUE="Import OPML to selected node"/>
<attribute NAME="menuLocation" VALUE="/menu_bar/file/import"/>
<attribute NAME="executionMode" VALUE="on_single_node"/>
<attribute NAME="keyboardShortcut" VALUE=""/>
<attribute NAME="execute_scripts_without_asking" VALUE="true"/>
<attribute NAME="execute_scripts_without_file_restriction" VALUE="true"/>
<attribute NAME="execute_scripts_without_write_restriction" VALUE="true"/>
<attribute NAME="execute_scripts_without_exec_restriction" VALUE="true"/>
<attribute NAME="execute_scripts_without_network_restriction" VALUE="false"/>
<node TEXT="/*&#xa;Freeplane Addon  Import OPML to currently selected node&#xa;v0.1 18th Jan 2017&#xa;&#xa;Version History&#xa;v0.1 First Release&#xa;&#xa;To Use Script&#xa;1. create new node or select an existing node&#xa;2. In Freeplane &apos;Tools&apos; menu select &apos;Scripts&apos;&#xa;3. Choose the script &apos;Import OPML to selected node&apos;&#xa;4. Choose the opml file when requested&#xa;5. OPML nodes and notes will be imported within the selected node&#xa;&#xa;Note. Before running this script you can add an attribute to the selected note&#xa;called &apos;opml file&apos;.&#xa;&#xa;The &apos;opml file&apos; attribute value should have a valid full path to the&#xa;opml file (eg /Users/adxsoft/myopmldata.opml or c:/opmlfiles/myopmldata.opml).&#xa;&#xa;The script checks to see if the &apos;opml file&apos; attribute is present and uses&#xa;that information to find the opml file.&#xa;&#xa;If the &apos;opml file&apos; attribute is not in the selected node the user will&#xa;be prompted to locate the opml file.&#xa;&#xa;*/&#xa;import javax.swing.JFileChooser&#xa;import javax.swing.filechooser.FileNameExtensionFilter&#xa;import static javax.xml.stream.XMLInputFactory.newInstance as staxFactory&#xa;import javax.xml.stream.XMLStreamReader as StaxReader&#xa;import java.io.File as File&#xa;import groovy.xml.dom.DOMCategory&#xa;&#xa;import javax.swing.JFileChooser&#xa;import javax.swing.filechooser.FileNameExtensionFilter&#xa;&#xa;import static java.nio.charset.StandardCharsets.*;&#xa;&#xa;def validfile=false&#xa;if (node[&apos;opml file&apos;].text != null) {&#xa;    def inputfile = new File(node[&apos;opml file&apos;].text)&#xa;    if (inputfile.exists()) {&#xa;        opmlfiledata=inputfile.text&#xa;        validfile=true&#xa;    } else {&#xa;        c.statusInfo=&apos;file in attribute &quot;opml file&quot; &gt; &apos;+inputfile+&apos; not found - script cancelled by user&apos;&#xa;        return&#xa;    }&#xa;} else {&#xa;    chooser = new JFileChooser()&#xa;    chooser.setDialogTitle(&apos;Import OPML into selected node&apos;)&#xa;    FileNameExtensionFilter filter = new FileNameExtensionFilter(&quot;OPML files&quot;, &quot;opml&quot;)&#xa;    chooser.setFileFilter(filter);&#xa;    returnVal = chooser.showOpenDialog();&#xa;    if (returnVal == JFileChooser.APPROVE_OPTION) {&#xa;        c.statusInfo=&apos;User has selected file &apos;+chooser.selectedFile&#xa;        opmlfilename=chooser.selectedFile.toString()&#xa;        def inputfile = new File(opmlfilename)&#xa;        if (inputfile.exists()) {&#xa;            opmlfiledata = &apos;&apos;&#xa;            inrichcontent = false&#xa;            // preprocess any HTML data in richcontent tags&#xa;            inputfile.each { String line -&gt;&#xa;                if (line.contains(&apos;&lt;richcontent&gt;&apos;)) {&#xa;                    inrichcontent = true&#xa;                    opmlfiledata += line + &apos;\n&apos;&#xa;                }&#xa;                else if (line.contains(&apos;&lt;/richcontent&gt;&apos;)) {&#xa;                        inrichcontent = false&#xa;                        opmlfiledata += line + &apos;\n&apos;&#xa;                }&#xa;                else if (inrichcontent) {&#xa;                            println &quot;process ${line}&quot;&#xa;                            def unescapeddata = line.replaceAll(&apos;&lt;&apos;, /&amp;lt;/)&#xa;                                    .replaceAll(&apos;&gt;&apos;, /&amp;gt;/)&#xa;                                    .replaceAll(&apos;&quot;&apos;, /&amp;quot;/)&#xa;                                    .replaceAll(&quot;&apos;&quot;, /&amp;apos;/)&#xa;                                    .replaceAll(&apos;&amp;&apos;, /&amp;amp;/)&#xa;                            opmlfiledata += unescapeddata + &apos;\n&apos;&#xa;&#xa;                }&#xa;                else {&#xa;                            opmlfiledata += line + &apos;\n&apos;&#xa;                }&#xa;            }&#xa;&#xa;            validfile = true&#xa;        } else {&#xa;            c.statusInfo=&apos;file in attribute &quot;opml file&quot; &gt; &apos;+inputfile+&apos; not found - script cancelled by user&apos;&#xa;            return&#xa;        }&#xa;    } else {&#xa;        c.statusInfo=&apos;&quot;Import OPML into selected node&quot; script cancelled by user&apos;&#xa;        return&#xa;    }&#xa;}&#xa;&#xa;if (!validfile) return&#xa;&#xa;def outlines = []&#xa;def outline&#xa;def seenTag&#xa;&#xa;opmlreader = new StringReader(opmlfiledata)&#xa;&#xa;StaxReader.metaClass.attr = {s -&gt; delegate.getAttributeValue(null, s)}&#xa;def reader = staxFactory().createXMLStreamReader(opmlreader)&#xa;def name=&apos;&apos;&#xa;def depth=0&#xa;def lastoutlinedetails=[:]&#xa;def currentnodes=[:]&#xa;def lastdepth=0&#xa;def lastoutlinetitle=&apos;top&apos;&#xa;lastoutlinedetails[depth]=[&apos;top&apos;,-1]&#xa;currentnodes[depth]=node&#xa;currentnode=node&#xa;richcontent=null&#xa;while (reader.hasNext()) {&#xa;    if (reader.startElement) {&#xa;        name = reader.localName&#xa;&#xa;        // found outline tag in opml file&#xa;        if (name == &apos;outline&apos;) {&#xa;&#xa;            title = reader.attr(&apos;text&apos;)&#xa;            note = reader.attr(&apos;_note&apos;)&#xa;            outline = [text:reader.attr(&apos;text&apos;)]&#xa;            if (depth == lastdepth) {&#xa;                println &apos;--&apos;*depth+&apos;add child &apos;+title+&apos; to parent &apos;+lastoutlinedetails[depth][0]&#xa;                newnode=currentnode.createChild(title)&#xa;                if (note != null) {&#xa;                    def escapednote = note.replaceAll(/&amp;lt;/, &apos;&lt;&apos;)&#xa;                            .replaceAll(/&amp;gt;/, &apos;&gt;&apos;)&#xa;                            .replaceAll(/&amp;quot;/, &apos;&quot;&apos;)&#xa;                            .replaceAll(/&amp;apos;/, &quot;&apos;&quot;)&#xa;                            .replaceAll(/&amp;amp;/, &apos;&amp;&apos;)&#xa;                    newnode.noteText=&quot;&lt;html&gt;&lt;head&gt;&lt;/head&gt;&lt;body&gt;${escapednote}&lt;/body&gt;&lt;/html&gt;&quot; // handles utf-8 ok&#xa;                }&#xa;                currentnode=newnode&#xa;            } else {&#xa;                println &apos;  - creating SIBLING &apos;+title+&apos; of node &apos;+lastoutlinedetails[depth][0]&#xa;                newnode=currentnodes[depth].createChild(title)&#xa;                if (note != null) {&#xa;                    def escapednote = note.replaceAll(/&amp;lt;/, &apos;&lt;&apos;)&#xa;                            .replaceAll(/&amp;gt;/, &apos;&gt;&apos;)&#xa;                            .replaceAll(/&amp;quot;/, &apos;&quot;&apos;)&#xa;                            .replaceAll(/&amp;apos;/, &quot;&apos;&quot;)&#xa;                            .replaceAll(/&amp;amp;/, &apos;&amp;&apos;)&#xa;                    newnode.noteText=&quot;&lt;html&gt;&lt;head&gt;&lt;/head&gt;&lt;body&gt;${escapednote}&lt;/body&gt;&lt;/html&gt;&quot; // handles utf-8 ok&#xa;                }&#xa;                currentnode=newnode&#xa;            }&#xa;            depth+=1&#xa;            lastoutlinedetails[depth]=[title,note,richcontent]&#xa;            currentnodes[depth]=currentnode&#xa;            lastdepth=depth&#xa;            lastoutlinetitle=title&#xa;        }&#xa;        else if (name in [&apos;note&apos;,&apos;richcontent&apos;]) {&#xa;            seenTag=name&#xa;            outline[seenTag]=&apos;&apos;&#xa;        }&#xa;    } else if (reader.characters) {&#xa;        if (seenTag) {&#xa;            if (reader.text.trim() !=&apos;&apos;) {&#xa;                outline[seenTag] += reader.text.trim()&#xa;            }&#xa;        }&#xa;    } else if (reader.endElement) {&#xa;        name = reader.localName&#xa;        if (name == &apos;outline&apos;) {&#xa;            outlines +=outline&#xa;            depth-=1&#xa;            title = lastoutlinedetails[depth][0]&#xa;            note = lastoutlinedetails[depth][1]&#xa;            seenTag = null&#xa;        }&#xa;        if (name==&apos;richcontent&apos;) {&#xa;            try {&#xa;                def escapeddetailsText = outline[&apos;richcontent&apos;].replaceAll(/&amp;lt;/, &apos;&lt;&apos;)&#xa;                        .replaceAll(/&amp;gt;/, &apos;&gt;&apos;)&#xa;                        .replaceAll(/&amp;quot;/, &apos;&quot;&apos;)&#xa;                        .replaceAll(/&amp;apos;/, &quot;&apos;&quot;)&#xa;                        .replaceAll(/&amp;amp;/, &apos;&amp;&apos;)&#xa;                newnode.detailsText = escapeddetailsText&#xa;            }&#xa;            catch (Exception e) {&#xa;                newnode.detailsText = &quot;Unable to load node detail for node ${name}&quot;&#xa;            }&#xa;        }&#xa;    }&#xa;    reader.next()&#xa;}&#xa;c.statusInfo=&apos;Imported OPML data into node &quot;&apos;+node.text+&apos;&quot;&apos;" ID="ID_621368943" CREATED="1389207772225" MODIFIED="1484693332840"/>
</node>
</node>
<node TEXT="zips" POSITION="right" ID="ID_294220045" CREATED="1381771547840" MODIFIED="1385408757698">
<edge COLOR="#007c00"/>
<richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      An add-on may contain any number of nodes containing zip files.
    </p>
    <p>
      
    </p>
    <p>
      &#160;- The immediate child nodes contain a description of the zip. The devtools script releaseAddOn.groovy allows automatic zip creation if the name of this node matches a directory in the current directory.
    </p>
    <p>
      
    </p>
    <p>
      &#160;- The child nodes of these nodes contain the actual zip files.
    </p>
    <p>
      
    </p>
    <p>
      &#160;- Any zip file will be extracted in the &lt;installationbase&gt;. Currently, &lt;installationbase&gt; is always Freeplane's &lt;userhome&gt;, e.g. ~/.freeplane/1.2.
    </p>
    <p>
      
    </p>
    <p>
      &#160;- The files will be processed in the sequence as seen in the map.
    </p>
    <p>
      
    </p>
    <p>
      &#160;- Zip files must be uploaded into the map via the script <i>Tools-&gt;Scripts-&gt;Insert Binary</i>&#160;since they have to be (base64) encoded as simple strings.
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="images" POSITION="right" ID="ID_64645831" CREATED="1381771547856" MODIFIED="1385408757698">
<edge COLOR="#7c007c"/>
<richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      An add-on may define any number of images as child nodes of the images node. The actual image data has to be placed as base64 encoded binary data into the text of a subnode.
    </p>
    <p>
      The images are saved to the <i>${installationbase}/resources/images</i>&#160;directory.
    </p>
    <p>
      
    </p>
    <p>
      The following images should be present:
    </p>
    <ul>
      <li>
        <i>${name}.png</i>, like <i>oldicons-theme.png</i>. This will be used in the app-on details dialog.
      </li>
      <li>
        <i>${name}-icon.png</i>, like <i>oldicons-theme-icon.png</i>. This will be used in the app-on overview.
      </li>
    </ul>
    <p>
      Images can be added automatically by releaseAddOn.groovy or must be uploaded into the map via the script <i>Tools-&gt;Scripts-&gt;Insert Binary</i>&#160;since they have to be (base64) encoded as simple strings.
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="description" FOLDED="true" POSITION="left" ID="ID_1720577024" CREATED="1381756995184" MODIFIED="1385408757620">
<edge COLOR="#ff0000"/>
<richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Description would be awkward to edit as an attribute.
    </p>
    <p>
      So you have to put the add-on description as a child of the <i>'description'</i>&#160;node.
    </p>
  </body>
</html>
</richcontent>
<node ID="ID_1710504899" CREATED="1381010218612" MODIFIED="1484694978114"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      &#160;Freeplane Add-on to import an OPML file to Freeplane.
    </p>
    <p>
      
    </p>
    <p>
      This script will import an OPML format file into Freemind nodes, notes and node details.
    </p>
    <p>
      
    </p>
    <p>
      OPML is a popular export format for mind maps and OPML has nodes recorded in <b><i>outline </i></b>tags.
    </p>
    <p>
      
    </p>
    <p>
      Within each <b><i>outline</i></b>&#160;tag there are
    </p>
    <ul>
      <li>
        a <i><b>text&#160;attribute</b></i>&#160;which is the node title
      </li>
      <li>
        Optionally,&#160;&#160;a <b><i>_note attribute</i></b>&#160;which is the note related to the node. If present the _note attribute value is copied to the <i><b>node note</b></i>&#160;(node.noteText)
      </li>
      <li>
        Optionally, a child richcontent tag. If present the contents between the &lt;richcontent&gt; tag and the &lt;/richcontent&gt; tag will be copied to the <b><i>node details</i></b>&#160;(node.detailsText)
      </li>
    </ul>
    <p>
      
    </p>
    <p>
      &#160;To use the add-on
    </p>
    <ul>
      <li>
        create a new node or select an existing node in a map
      </li>
      <li>
        In Freeplane menus choose 'File/Import/Import OPML to selected node'
      </li>
      <li>
        Choose the opml file when requested <i>Note. if the selected node has an attribute called </i><b>'opml file' </b><i>with the value set to the full path of the opml file, then that file will be imported. if the selected node has no attribute 'opml file' you will be prompted for the files location</i>
      </li>
      <li>
        OPML nodes and notes will be imported within the selected node
      </li>
    </ul>
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="changes" POSITION="left" ID="ID_1266504671" CREATED="1381756995246" MODIFIED="1385408757620">
<edge COLOR="#0000ff"/>
<richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Change log of this add-on: append one node for each noteworthy version and put the details for each version into a child node.
    </p>
  </body>
</html>
</richcontent>
<node TEXT="v0.1" ID="ID_989474074" CREATED="1381515647301" MODIFIED="1484694600222">
<node TEXT="first release" ID="ID_1447942083" CREATED="1381515663492" MODIFIED="1381515676152"/>
</node>
</node>
<node TEXT="license" FOLDED="true" POSITION="left" ID="ID_1476305357" CREATED="1381756995277" MODIFIED="1385408757636">
<edge COLOR="#00ff00"/>
<richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      The add-ons's license that the user has to accept before she can install it.
    </p>
    <p>
      
    </p>
    <p>
      The License text has to be entered as a child of the <i>'license'</i>&#160;node, either as plain text or as HTML.
    </p>
  </body>
</html>
</richcontent>
<node TEXT="&#xa;This add-on is free software: you can redistribute it and/or modify&#xa;it under the terms of the GNU General Public License as published by&#xa;the Free Software Foundation, either version 2 of the License, or&#xa;(at your option) any later version.&#xa;&#xa;This program is distributed in the hope that it will be useful,&#xa;but WITHOUT ANY WARRANTY; without even the implied warranty of&#xa;MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.&#xa0;&#xa0;See the&#xa;GNU General Public License for more details.&#xa;" ID="ID_99261528" CREATED="1381756995308" MODIFIED="1381756995308"/>
</node>
<node TEXT="preferences.xml" POSITION="left" ID="ID_1169408938" CREATED="1381756995418" MODIFIED="1385408757636">
<edge COLOR="#ff00ff"/>
<richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <font face="SansSerif, sans-serif" color="#000000">The child node contains the add-on configuration as an extension to mindmapmodemenu.xml (in Tools-&gt;Preferences-&gt;Add-ons). </font>
    </p>
    <p>
      <font face="SansSerif, sans-serif" color="#000000">Every property in the configuration should receive a default value in <i>default.properties</i>&#160;node.</font>
    </p>
  </body>
</html>
</richcontent>
<node TEXT="&lt;?xml version=&quot;1.0&quot; encoding=&quot;UTF-8&quot;?&gt;&#xa;&lt;preferences_structure&gt;&#xa;&lt;tabbed_pane&gt;&#xa;&lt;tab name=&quot;plugin.addons.ImportOPMLtoselectednode&quot;&gt;&#xa;&lt;/tab&gt;&#xa;&lt;/tabbed_pane&gt;&#xa;&lt;/preferences_structure&gt;" ID="ID_1509356417" CREATED="1377775970489" MODIFIED="1484692975755"/>
</node>
<node TEXT="default.properties" POSITION="left" ID="ID_1434342109" CREATED="1381006378455" MODIFIED="1484696895512">
<edge COLOR="#00ffff"/>
<richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      These properties play together with the preferences: Each property defined in the preferences should have a default value in the attributes of this node.
    </p>
  </body>
</html>
</richcontent>
<attribute_layout NAME_WIDTH="181.7999913311009 pt" VALUE_WIDTH="271.79998703956664 pt"/>
</node>
<node TEXT="translations" POSITION="left" ID="ID_1618020204" CREATED="1381756995527" MODIFIED="1484696694296" HGAP_QUANTITY="19.399999742507948 pt" VSHIFT_QUANTITY="54.89999738216413 pt">
<edge COLOR="#ffff00"/>
<richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      The translation keys that this script uses. Define one child node per supported locale. The attributes contain the translations. Define at least 'addons.${name}' for the add-on's name.
    </p>
  </body>
</html>
</richcontent>
<node TEXT="en" ID="ID_37110248" CREATED="1484684633238" MODIFIED="1484696682655" HGAP_QUANTITY="14.899999957084658 pt" VSHIFT_QUANTITY="72.89999652385728 pt">
<attribute NAME="addons.${name}" VALUE="Import OPML to selected node"/>
</node>
</node>
<node TEXT="Preferences" POSITION="right" ID="ID_1000078379" CREATED="1379081732569" MODIFIED="1484692175367">
<edge COLOR="#ff0000"/>
<font BOLD="true"/>
<richcontent TYPE="DETAILS" HIDDEN="true">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Tools&gt;Preferences&gt;Plugins
    </p>
  </body>
</html>
</richcontent>
<hook NAME="AlwaysUnfoldedNode"/>
<node TEXT="permit file/read operation" ID="ID_764499316" CREATED="1380637819859" MODIFIED="1380658688016">
<hook NAME="AlwaysUnfoldedNode"/>
<node TEXT="true" ID="ID_1143057828" CREATED="1380638171354" MODIFIED="1380638196080"/>
</node>
<node TEXT="classpath" ID="ID_968926468" CREATED="1378550495789" MODIFIED="1380658720099">
<hook NAME="AlwaysUnfoldedNode"/>
<node TEXT="set to lib" ID="ID_1594580381" CREATED="1378550503660" MODIFIED="1379081718403"/>
</node>
<node TEXT="script path" ID="ID_1460685197" CREATED="1378550519969" MODIFIED="1379081752397">
<node TEXT="set to scripts" ID="ID_887232786" CREATED="1378550528074" MODIFIED="1378550534891"/>
</node>
</node>
<node POSITION="right" ID="ID_248608830" CREATED="1379964830451" MODIFIED="1484692002894"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b>Location menu:</b>&#160;File<i>&#160;&gt; Import &gt; Import OPML to selected node</i>
    </p>
  </body>
</html>
</richcontent>
<edge COLOR="#0000ff"/>
</node>
<node TEXT="deinstall" POSITION="right" ID="ID_18388134" CREATED="1484684633271" MODIFIED="1484696706649" HGAP_QUANTITY="-501.69997540950897 pt" VSHIFT_QUANTITY="39.599998111724915 pt">
<edge COLOR="#808080"/>
<richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      List of files and/or directories to remove on uninstall
    </p>
  </body>
</html>
</richcontent>
<attribute NAME="delete" VALUE="${installationbase}/addons/${name}.script.xml"/>
</node>
</node>
</map>
