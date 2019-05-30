<?php

namespace App\DataFixtures;

use App\Entity\Article;
use App\Entity\Comment;
use App\Entity\Category;
use Doctrine\Bundle\FixturesBundle\Fixture;
use Doctrine\Common\Persistence\ObjectManager;
use Symfony\Component\Validator\Constraints\DateTime;

class ArticleFixtures extends Fixture
{
    public function load(ObjectManager $manager)
    {

        $faker = \Faker\Factory::create('fr_FR');
        for ($i=0; $i < 3; $i++) {
            $category = new Category();
            $category->setTitle($faker->sentence())
                     ->setDescription($faker->paragraph());

            $manager->persist($category);

            // Créer entre 4 et 6 articles
            $content = '<p>';
            $content .= join($faker->paragraphs(1), '</p><p>');
            $content .= '</p>';

            for ($j=1; $j <= mt_rand(1,3); $j++) {
                $article = new Article();
                $article->setTitle($faker->sentence())
                    ->setContent($content)
                    ->setImage($faker->imageUrl())
                    ->setCreatedAt($faker->dateTimeBetween('- 6 months'))
                    ->setCategory($category);

                $manager->persist($article);

                for ($k=1; $k <= mt_rand(1,2); $k++) {
                    $comment = new Comment();

                    $content = '<p>';
                    $content .= join($faker->paragraphs(1), '</p><p>');
                    $content .= '</p>';

                    $now = new \DateTime();
                    $days = $now->diff($article->getCreatedAt())->days;
                    $minimum = '-' .$days . 'days';
                    $comment->setAuthor($faker->name)
                            ->setContent($content)
                            ->setCreaterAt($faker->dateTimeBetween($minimum))
                            ->setArticle($article);

                    $manager->persist($comment);
                }

            }
        }
        $manager->flush();
    }
}
