; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/test/extr_regress_finalize.c_tfff_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/test/extr_regress_finalize.c_tfff_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@tfff_p1 = common dso_local global i8* null, align 8
@tfff_p1_freed = common dso_local global i32 0, align 4
@tfff_p2 = common dso_local global i8* null, align 8
@tfff_p2_freed = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @tfff_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tfff_free(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = icmp ne i8* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %23

6:                                                ; preds = %1
  %7 = load i8*, i8** %2, align 8
  %8 = load i8*, i8** @tfff_p1, align 8
  %9 = icmp eq i8* %7, %8
  br i1 %9, label %10, label %13

10:                                               ; preds = %6
  %11 = load i32, i32* @tfff_p1_freed, align 4
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* @tfff_p1_freed, align 4
  br label %13

13:                                               ; preds = %10, %6
  %14 = load i8*, i8** %2, align 8
  %15 = load i8*, i8** @tfff_p2, align 8
  %16 = icmp eq i8* %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = load i32, i32* @tfff_p2_freed, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* @tfff_p2_freed, align 4
  br label %20

20:                                               ; preds = %17, %13
  %21 = load i8*, i8** %2, align 8
  %22 = call i32 @free(i8* %21)
  br label %23

23:                                               ; preds = %20, %5
  ret void
}

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
