; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_copy_foreign.c_maybe_done.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_copy_foreign.c_maybe_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dir_baton_t = type { i64, i32, %struct.dir_baton_t* }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.dir_baton_t*)* @maybe_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @maybe_done(%struct.dir_baton_t* %0) #0 {
  %2 = alloca %struct.dir_baton_t*, align 8
  %3 = alloca %struct.dir_baton_t*, align 8
  store %struct.dir_baton_t* %0, %struct.dir_baton_t** %2, align 8
  %4 = load %struct.dir_baton_t*, %struct.dir_baton_t** %2, align 8
  %5 = getelementptr inbounds %struct.dir_baton_t, %struct.dir_baton_t* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = add nsw i64 %6, -1
  store i64 %7, i64* %5, align 8
  %8 = load %struct.dir_baton_t*, %struct.dir_baton_t** %2, align 8
  %9 = getelementptr inbounds %struct.dir_baton_t, %struct.dir_baton_t* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %27

12:                                               ; preds = %1
  %13 = load %struct.dir_baton_t*, %struct.dir_baton_t** %2, align 8
  %14 = getelementptr inbounds %struct.dir_baton_t, %struct.dir_baton_t* %13, i32 0, i32 2
  %15 = load %struct.dir_baton_t*, %struct.dir_baton_t** %14, align 8
  store %struct.dir_baton_t* %15, %struct.dir_baton_t** %3, align 8
  %16 = load %struct.dir_baton_t*, %struct.dir_baton_t** %2, align 8
  %17 = getelementptr inbounds %struct.dir_baton_t, %struct.dir_baton_t* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @svn_pool_clear(i32 %18)
  %20 = load %struct.dir_baton_t*, %struct.dir_baton_t** %3, align 8
  %21 = icmp ne %struct.dir_baton_t* %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %12
  %23 = load %struct.dir_baton_t*, %struct.dir_baton_t** %3, align 8
  %24 = call i32* @maybe_done(%struct.dir_baton_t* %23)
  %25 = call i32 @SVN_ERR(i32* %24)
  br label %26

26:                                               ; preds = %22, %12
  br label %27

27:                                               ; preds = %26, %1
  %28 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %28
}

declare dso_local i32 @svn_pool_clear(i32) #1

declare dso_local i32 @SVN_ERR(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
