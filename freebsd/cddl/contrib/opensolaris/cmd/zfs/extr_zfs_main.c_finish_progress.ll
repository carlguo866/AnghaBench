; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zfs/extr_zfs_main.c_finish_progress.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zfs/extr_zfs_main.c_finish_progress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pt_shown = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@stdout = common dso_local global i32 0, align 4
@pt_header = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @finish_progress to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @finish_progress(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i64, i64* @pt_shown, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %10

5:                                                ; preds = %1
  %6 = load i8*, i8** %2, align 8
  %7 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %6)
  %8 = load i32, i32* @stdout, align 4
  %9 = call i32 @fflush(i32 %8)
  br label %10

10:                                               ; preds = %5, %1
  %11 = load i32*, i32** @pt_header, align 8
  %12 = call i32 @free(i32* %11)
  store i32* null, i32** @pt_header, align 8
  ret void
}

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
