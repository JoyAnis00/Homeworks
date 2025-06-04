import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/components/news_list_view.dart';
import 'package:news_app/cubits/news_cubit/news_cubit.dart';
import 'package:news_app/cubits/news_cubit/news_states.dart';

class NewsListViewBuilder extends StatefulWidget {
  final String category;
  const NewsListViewBuilder({super.key, required this.category});

  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<NewsCubit>(context).getNews(widget.category);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsCubit, NewsStates>(
      builder: (context, state) {
        if (state is NewsLoadingState) {
          return SliverToBoxAdapter(
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.6,
              child: const Center(child: CircularProgressIndicator()),
            ),
          );
        } else if (state is NewsErrorState) {
          return SliverToBoxAdapter(
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.6,
              child: Center(child: Text(state.error)),
            ),
          );
        } else if (state is NewsSuccessState) {
          return NewsListView(articles: state.articles);
        }
        return SliverToBoxAdapter(
          child: SizedBox(
            height: MediaQuery.of(context).size.height * 0.6,
            child: const Center(child: Text('No data available')),
          ),
        );
      },
    );
  }
}
