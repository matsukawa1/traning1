{extends file='default/base.tpl'}
{block title append} 書き込みリスト{/block}
{block main_contents}
    <h1>{$thread_list->getTitle()}</h1>
    </br>
    <ol>
        {foreach $entry_list as $entry}
            <li>
                {$account = $entry->getAccount()}
                <div class="account">        
                    名前：{$account->getName()} &nbsp;
                    日時：{$entry->getCreatedAt()}</br>
                    {$entry->getBody()}

                </div>

            </li>
        {/foreach}
    </ol>  

{*    {if $login_id = $sdx_context->getVar('signed_account')->getId() != null}*}
        {$form->renderStartTag() nofilter}  
        {$form.entry->setLabel('コメント')->renderLabel() nofilter}
        {$form.entry->render([class=>"form-control", placeholder=>"ゆっくりしていってね∩( ´∀｀)∩ヽ(〃´∀｀〃)ﾉ"]) nofilter}
        <input type="submit" name="submit" value="送信" class="btn btn-success">
        </form>
    {*{else}
        <font color="red"><b>ログインしないとコメントできません</b></font>
        {$form->renderStartTag() nofilter}  
        {$form.entry->setLabel('コメント')->renderLabel() nofilter}
        {$form.entry->render([class=>"form-control", placeholder=>"ゆっくりしていってね∩( ´∀｀)∩ヽ(〃´∀｀〃)ﾉ", disabled=>"true"]) nofilter}
        <input type="submit" name="submit" value="送信" disabled="true" class="btn btn-success">
        </form>
    {/if}*}
{/block}
