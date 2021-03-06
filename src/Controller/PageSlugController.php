<?php

/**
 * This file was created by the developers from BitBag.
 * Feel free to contact us once you face any issues or want to start
 * another great project.
 * You can find more information about us on https://bitbag.shop and write us
 * an email on kontakt@bitbag.pl.
 */

namespace BitBag\CmsPlugin\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\JsonResponse;
use Symfony\Component\HttpFoundation\Request;

/**
 * @author Mikołaj Król <mikolaj.krol@bitbag.pl>
 */
final class PageSlugController extends Controller
{
    /**
     * @param Request $request
     *
     * @return JsonResponse
     */
    public function generateAction(Request $request)
    {
        $name = $request->query->get('name');

        return new JsonResponse([
            'slug' => $this->get('sylius.generator.slug')->generate($name),
        ]);
    }
}