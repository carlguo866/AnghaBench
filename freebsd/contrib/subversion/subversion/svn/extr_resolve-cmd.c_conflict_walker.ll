; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svn/extr_resolve-cmd.c_conflict_walker.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svn/extr_resolve-cmd.c_conflict_walker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.conflict_walker_baton = type { i64, i32, i32, i32, i32, i32, i32, i32, i32 }

@SVN_ERR_CANCELLED = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i32*, i32*)* @conflict_walker to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @conflict_walker(i8* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.conflict_walker_baton*, align 8
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.conflict_walker_baton*
  store %struct.conflict_walker_baton* %10, %struct.conflict_walker_baton** %8, align 8
  %11 = load %struct.conflict_walker_baton*, %struct.conflict_walker_baton** %8, align 8
  %12 = getelementptr inbounds %struct.conflict_walker_baton, %struct.conflict_walker_baton* %11, i32 0, i32 0
  %13 = load %struct.conflict_walker_baton*, %struct.conflict_walker_baton** %8, align 8
  %14 = getelementptr inbounds %struct.conflict_walker_baton, %struct.conflict_walker_baton* %13, i32 0, i32 8
  %15 = load %struct.conflict_walker_baton*, %struct.conflict_walker_baton** %8, align 8
  %16 = getelementptr inbounds %struct.conflict_walker_baton, %struct.conflict_walker_baton* %15, i32 0, i32 7
  %17 = load i32*, i32** %6, align 8
  %18 = load %struct.conflict_walker_baton*, %struct.conflict_walker_baton** %8, align 8
  %19 = getelementptr inbounds %struct.conflict_walker_baton, %struct.conflict_walker_baton* %18, i32 0, i32 6
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.conflict_walker_baton*, %struct.conflict_walker_baton** %8, align 8
  %22 = getelementptr inbounds %struct.conflict_walker_baton, %struct.conflict_walker_baton* %21, i32 0, i32 5
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.conflict_walker_baton*, %struct.conflict_walker_baton** %8, align 8
  %25 = getelementptr inbounds %struct.conflict_walker_baton, %struct.conflict_walker_baton* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.conflict_walker_baton*, %struct.conflict_walker_baton** %8, align 8
  %28 = getelementptr inbounds %struct.conflict_walker_baton, %struct.conflict_walker_baton* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.conflict_walker_baton*, %struct.conflict_walker_baton** %8, align 8
  %31 = getelementptr inbounds %struct.conflict_walker_baton, %struct.conflict_walker_baton* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.conflict_walker_baton*, %struct.conflict_walker_baton** %8, align 8
  %34 = getelementptr inbounds %struct.conflict_walker_baton, %struct.conflict_walker_baton* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load i32*, i32** %7, align 8
  %37 = call i32 @svn_cl__resolve_conflict(i64* %12, i32* %14, i32* %16, i32* %17, i32 %20, i32 %23, i32 %26, i32 %29, i32 %32, i32 %35, i32* %36)
  %38 = call i32 @SVN_ERR(i32 %37)
  %39 = load %struct.conflict_walker_baton*, %struct.conflict_walker_baton** %8, align 8
  %40 = getelementptr inbounds %struct.conflict_walker_baton, %struct.conflict_walker_baton* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %3
  %44 = load i32, i32* @SVN_ERR_CANCELLED, align 4
  %45 = call i32* @svn_error_create(i32 %44, i32* null, i32* null)
  store i32* %45, i32** %4, align 8
  br label %48

46:                                               ; preds = %3
  %47 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %47, i32** %4, align 8
  br label %48

48:                                               ; preds = %46, %43
  %49 = load i32*, i32** %4, align 8
  ret i32* %49
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_cl__resolve_conflict(i64*, i32*, i32*, i32*, i32, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32* @svn_error_create(i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
