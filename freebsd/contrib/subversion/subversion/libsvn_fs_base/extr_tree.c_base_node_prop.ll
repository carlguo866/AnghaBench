; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/extr_tree.c_base_node_prop.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/extr_tree.c_base_node_prop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.node_prop_args = type { i8*, i8*, %struct.TYPE_3__*, i32** }

@txn_body_node_prop = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32**, %struct.TYPE_3__*, i8*, i8*, i32*)* @base_node_prop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @base_node_prop(i32** %0, %struct.TYPE_3__* %1, i8* %2, i8* %3, i32* %4) #0 {
  %6 = alloca i32**, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.node_prop_args, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  store i32** %0, i32*** %6, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32* %4, i32** %10, align 8
  %14 = load i32*, i32** %10, align 8
  %15 = call i32* @svn_pool_create(i32* %14)
  store i32* %15, i32** %13, align 8
  %16 = getelementptr inbounds %struct.node_prop_args, %struct.node_prop_args* %11, i32 0, i32 3
  store i32** %12, i32*** %16, align 8
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %18 = getelementptr inbounds %struct.node_prop_args, %struct.node_prop_args* %11, i32 0, i32 2
  store %struct.TYPE_3__* %17, %struct.TYPE_3__** %18, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = getelementptr inbounds %struct.node_prop_args, %struct.node_prop_args* %11, i32 0, i32 0
  store i8* %19, i8** %20, align 8
  %21 = load i8*, i8** %9, align 8
  %22 = getelementptr inbounds %struct.node_prop_args, %struct.node_prop_args* %11, i32 0, i32 1
  store i8* %21, i8** %22, align 8
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @txn_body_node_prop, align 4
  %27 = load i32, i32* @FALSE, align 4
  %28 = load i32*, i32** %13, align 8
  %29 = call i32 @svn_fs_base__retry_txn(i32 %25, i32 %26, %struct.node_prop_args* %11, i32 %27, i32* %28)
  %30 = call i32 @SVN_ERR(i32 %29)
  %31 = load i32*, i32** %12, align 8
  %32 = load i32*, i32** %10, align 8
  %33 = call i32* @svn_string_dup(i32* %31, i32* %32)
  %34 = load i32**, i32*** %6, align 8
  store i32* %33, i32** %34, align 8
  %35 = load i32*, i32** %13, align 8
  %36 = call i32 @svn_pool_destroy(i32* %35)
  %37 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %37
}

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_fs_base__retry_txn(i32, i32, %struct.node_prop_args*, i32, i32*) #1

declare dso_local i32* @svn_string_dup(i32*, i32*) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
