; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_repos.c_fs_upgrade_notify.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_repos.c_fs_upgrade_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fs_upgrade_notify_baton_t = type { i32, i32 (i32, %struct.TYPE_4__*, i32*)* }
%struct.TYPE_4__ = type { i32, i8*, i8* }

@svn_repos_notify_mutex_acquired = common dso_local global i32 0, align 4
@svn_repos_notify_pack_revprops = common dso_local global i32 0, align 4
@svn_repos_notify_cleanup_revprops = common dso_local global i32 0, align 4
@svn_repos_notify_format_bumped = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i8*, i32, i32*)* @fs_upgrade_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @fs_upgrade_notify(i8* %0, i8* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.fs_upgrade_notify_baton_t*, align 8
  %10 = alloca %struct.TYPE_4__*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.fs_upgrade_notify_baton_t*
  store %struct.fs_upgrade_notify_baton_t* %12, %struct.fs_upgrade_notify_baton_t** %9, align 8
  %13 = load i32, i32* @svn_repos_notify_mutex_acquired, align 4
  %14 = load i32*, i32** %8, align 8
  %15 = call %struct.TYPE_4__* @svn_repos_notify_create(i32 %13, i32* %14)
  store %struct.TYPE_4__* %15, %struct.TYPE_4__** %10, align 8
  %16 = load i32, i32* %7, align 4
  switch i32 %16, label %38 [
    i32 128, label %17
    i32 130, label %24
    i32 129, label %31
  ]

17:                                               ; preds = %4
  %18 = load i8*, i8** %6, align 8
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 2
  store i8* %18, i8** %20, align 8
  %21 = load i32, i32* @svn_repos_notify_pack_revprops, align 4
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  br label %40

24:                                               ; preds = %4
  %25 = load i8*, i8** %6, align 8
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 2
  store i8* %25, i8** %27, align 8
  %28 = load i32, i32* @svn_repos_notify_cleanup_revprops, align 4
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  br label %40

31:                                               ; preds = %4
  %32 = load i8*, i8** %6, align 8
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  store i8* %32, i8** %34, align 8
  %35 = load i32, i32* @svn_repos_notify_format_bumped, align 4
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  br label %40

38:                                               ; preds = %4
  %39 = call i32 (...) @SVN_ERR_MALFUNCTION()
  br label %40

40:                                               ; preds = %38, %31, %24, %17
  %41 = load %struct.fs_upgrade_notify_baton_t*, %struct.fs_upgrade_notify_baton_t** %9, align 8
  %42 = getelementptr inbounds %struct.fs_upgrade_notify_baton_t, %struct.fs_upgrade_notify_baton_t* %41, i32 0, i32 1
  %43 = load i32 (i32, %struct.TYPE_4__*, i32*)*, i32 (i32, %struct.TYPE_4__*, i32*)** %42, align 8
  %44 = load %struct.fs_upgrade_notify_baton_t*, %struct.fs_upgrade_notify_baton_t** %9, align 8
  %45 = getelementptr inbounds %struct.fs_upgrade_notify_baton_t, %struct.fs_upgrade_notify_baton_t* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %48 = load i32*, i32** %8, align 8
  %49 = call i32 %43(i32 %46, %struct.TYPE_4__* %47, i32* %48)
  %50 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %50
}

declare dso_local %struct.TYPE_4__* @svn_repos_notify_create(i32, i32*) #1

declare dso_local i32 @SVN_ERR_MALFUNCTION(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
