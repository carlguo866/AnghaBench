; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_deprecated.c_recovery_started.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_deprecated.c_recovery_started.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }
%struct.recover_baton = type { i32, i32 (i32)* }

@svn_repos_notify_mutex_acquired = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.TYPE_3__*, i32*)* @recovery_started to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @recovery_started(i8* %0, %struct.TYPE_3__* %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.recover_baton*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.recover_baton*
  store %struct.recover_baton* %9, %struct.recover_baton** %7, align 8
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @svn_repos_notify_mutex_acquired, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %29

15:                                               ; preds = %3
  %16 = load %struct.recover_baton*, %struct.recover_baton** %7, align 8
  %17 = getelementptr inbounds %struct.recover_baton, %struct.recover_baton* %16, i32 0, i32 1
  %18 = load i32 (i32)*, i32 (i32)** %17, align 8
  %19 = icmp ne i32 (i32)* %18, null
  br i1 %19, label %20, label %29

20:                                               ; preds = %15
  %21 = load %struct.recover_baton*, %struct.recover_baton** %7, align 8
  %22 = getelementptr inbounds %struct.recover_baton, %struct.recover_baton* %21, i32 0, i32 1
  %23 = load i32 (i32)*, i32 (i32)** %22, align 8
  %24 = load %struct.recover_baton*, %struct.recover_baton** %7, align 8
  %25 = getelementptr inbounds %struct.recover_baton, %struct.recover_baton* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 %23(i32 %26)
  %28 = call i32 @svn_error_clear(i32 %27)
  br label %29

29:                                               ; preds = %20, %15, %3
  ret void
}

declare dso_local i32 @svn_error_clear(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
