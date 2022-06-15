import 'package:flutter/material.dart';
import 'package:flutter_map_fast_cluster/flutter_map_fast_cluster.dart';
import 'package:flutter_map_fast_cluster_example/clustering_many_markers_page.dart';
import 'package:flutter_map_fast_cluster_example/clustering_page.dart';
import 'package:flutter_map_fast_cluster_example/radius_cluster_manager_page.dart';

Widget _buildMenuItem(
    BuildContext context, Widget title, String routeName, String currentRoute) {
  var isSelected = routeName == currentRoute;

  return ListTile(
    title: title,
    selected: isSelected,
    onTap: () {
      if (isSelected) {
        Navigator.pop(context);
      } else {
        Navigator.pushReplacementNamed(context, routeName);
      }
    },
  );
}

Drawer buildDrawer(BuildContext context, String currentRoute) {
  return Drawer(
    child: ListView(
      children: <Widget>[
        const DrawerHeader(
          child: Center(
            child: Text('Flutter Map Clustering Examples'),
          ),
        ),
        _buildMenuItem(
          context,
          const Text('Clustering'),
          ClusteringPage.route,
          currentRoute,
        ),
        _buildMenuItem(
          context,
          const Text('Clustering Many Markers'),
          ClusteringManyMarkersPage.route,
          currentRoute,
        ),
        _buildMenuItem(
          context,
          Text('$RadiusClusterManager'),
          RadiusClusterManagerPage.route,
          currentRoute,
        ),
      ],
    ),
  );
}
