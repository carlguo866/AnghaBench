; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_conflicts.c_resolve_update_incoming_added_dir_merge.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_conflicts.c_resolve_update_incoming_added_dir_merge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32 }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, %struct.TYPE_3__*, i32*)* @resolve_update_incoming_added_dir_merge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @resolve_update_incoming_added_dir_merge(i32* %0, i32* %1, %struct.TYPE_3__* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %7, align 8
  store i32* %3, i32** %8, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = call i8* @svn_client_conflict_get_local_abspath(i32* %12)
  store i8* %13, i8** %9, align 8
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i8*, i8** %9, align 8
  %18 = load i32*, i32** %8, align 8
  %19 = load i32*, i32** %8, align 8
  %20 = call i32* @svn_wc__acquire_write_lock_for_resolve(i8** %10, i32 %16, i8* %17, i32* %18, i32* %19)
  %21 = call i32 @SVN_ERR(i32* %20)
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i8*, i8** %9, align 8
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32*, i32** %8, align 8
  %39 = call i32* @svn_wc__conflict_tree_update_local_add(i32 %24, i8* %25, i32 %28, i32 %31, i32 %34, i32 %37, i32* %38)
  store i32* %39, i32** %11, align 8
  %40 = load i32*, i32** %11, align 8
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i8*, i8** %10, align 8
  %45 = load i32*, i32** %8, align 8
  %46 = call i32 @svn_wc__release_write_lock(i32 %43, i8* %44, i32* %45)
  %47 = call i32* @svn_error_compose_create(i32* %40, i32 %46)
  store i32* %47, i32** %11, align 8
  %48 = load i32*, i32** %11, align 8
  %49 = call i32 @SVN_ERR(i32* %48)
  %50 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %50
}

declare dso_local i8* @svn_client_conflict_get_local_abspath(i32*) #1

declare dso_local i32 @SVN_ERR(i32*) #1

declare dso_local i32* @svn_wc__acquire_write_lock_for_resolve(i8**, i32, i8*, i32*, i32*) #1

declare dso_local i32* @svn_wc__conflict_tree_update_local_add(i32, i8*, i32, i32, i32, i32, i32*) #1

declare dso_local i32* @svn_error_compose_create(i32*, i32) #1

declare dso_local i32 @svn_wc__release_write_lock(i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
