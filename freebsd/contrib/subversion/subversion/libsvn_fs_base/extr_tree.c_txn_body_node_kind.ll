; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/extr_tree.c_txn_body_node_kind.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/extr_tree.c_txn_body_node_kind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.node_kind_args = type { i32, i32 }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, %struct.TYPE_4__*)* @txn_body_node_kind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @txn_body_node_kind(i8* %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca %struct.node_kind_args*, align 8
  %6 = alloca i32*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.node_kind_args*
  store %struct.node_kind_args* %8, %struct.node_kind_args** %5, align 8
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.node_kind_args*, %struct.node_kind_args** %5, align 8
  %13 = getelementptr inbounds %struct.node_kind_args, %struct.node_kind_args* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @svn_fs_base__dag_get_node(i32** %6, i32 %11, i32 %14, %struct.TYPE_4__* %15, i32 %18)
  %20 = call i32 @SVN_ERR(i32 %19)
  %21 = load i32*, i32** %6, align 8
  %22 = call i32 @svn_fs_base__dag_node_kind(i32* %21)
  %23 = load %struct.node_kind_args*, %struct.node_kind_args** %5, align 8
  %24 = getelementptr inbounds %struct.node_kind_args, %struct.node_kind_args* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %25
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_fs_base__dag_get_node(i32**, i32, i32, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @svn_fs_base__dag_node_kind(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
