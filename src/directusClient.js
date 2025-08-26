import { createDirectus, rest, readItems } from '@directus/sdk';

const directusPublic = createDirectus('https://api.portfolio.aymcode.fr')
.with(rest());

const directusAdmin = createDirectus('https://api.portfolio.aymcode.fr')
.with(rest({ credentials: 'include' }));

async function getCategories() {
    try{
        const categories = await directusPublic.request(readItems('category'));
        return categories;
    }catch(error){
        return("ERREUR :", error);
    }
}
export { getCategories };