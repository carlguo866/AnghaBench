; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_dump.c_change_dir_prop.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_dump.c_change_dir_prop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dir_baton = type { i64, i32, i32, i32, %struct.edit_baton* }
%struct.edit_baton = type { i32 }

@svn_node_dir = common dso_local global i32 0, align 4
@svn_node_action_change = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i8*, i32*, i32*)* @change_dir_prop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @change_dir_prop(i8* %0, i8* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.dir_baton*, align 8
  %10 = alloca %struct.edit_baton*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.dir_baton*
  store %struct.dir_baton* %12, %struct.dir_baton** %9, align 8
  %13 = load %struct.dir_baton*, %struct.dir_baton** %9, align 8
  %14 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %13, i32 0, i32 4
  %15 = load %struct.edit_baton*, %struct.edit_baton** %14, align 8
  store %struct.edit_baton* %15, %struct.edit_baton** %10, align 8
  %16 = load %struct.dir_baton*, %struct.dir_baton** %9, align 8
  %17 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %40, label %20

20:                                               ; preds = %4
  %21 = load %struct.edit_baton*, %struct.edit_baton** %10, align 8
  %22 = load %struct.dir_baton*, %struct.dir_baton** %9, align 8
  %23 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @svn_node_dir, align 4
  %26 = load i32, i32* @svn_node_action_change, align 4
  %27 = load i32, i32* @FALSE, align 4
  %28 = load %struct.dir_baton*, %struct.dir_baton** %9, align 8
  %29 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.dir_baton*, %struct.dir_baton** %9, align 8
  %32 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load i32*, i32** %8, align 8
  %35 = call i32 @dump_node(%struct.edit_baton* %21, i32 %24, i32 %25, i32 %26, i32 %27, i32 %30, i32 %33, i32* %34)
  %36 = call i32 @SVN_ERR(i32 %35)
  %37 = load i64, i64* @TRUE, align 8
  %38 = load %struct.dir_baton*, %struct.dir_baton** %9, align 8
  %39 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %38, i32 0, i32 0
  store i64 %37, i64* %39, align 8
  br label %40

40:                                               ; preds = %20, %4
  %41 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %41
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @dump_node(%struct.edit_baton*, i32, i32, i32, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
