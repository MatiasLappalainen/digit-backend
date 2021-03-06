const decorate = navItem => {
  const { nav_item_id: id, parent_id: parentId, site_page_id: sitePageId } = navItem
  const { title, path, isCustom, weight, showOnNavigation, isPublished } = navItem.nav_item_data

  return {
    id,
    path,
    title,
    weight,
    isCustom,
    parentId,
    showOnNavigation,
    isPublished,
    sitePageId
  }
}

const decorateList = navItems =>
  navItems.map(decorate)

module.exports = {
  decorate,
  decorateList
}
