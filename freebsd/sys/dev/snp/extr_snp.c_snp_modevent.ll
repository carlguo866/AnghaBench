; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/snp/extr_snp.c_snp_modevent.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/snp/extr_snp.c_snp_modevent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@snp_cdevsw = common dso_local global i32 0, align 4
@UID_ROOT = common dso_local global i32 0, align 4
@GID_WHEEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"snp\00", align 1
@snp_dev = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8*)* @snp_modevent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snp_modevent(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %8 = load i32, i32* %6, align 4
  switch i32 %8, label %16 [
    i32 129, label %9
    i32 128, label %13
  ]

9:                                                ; preds = %3
  %10 = load i32, i32* @UID_ROOT, align 4
  %11 = load i32, i32* @GID_WHEEL, align 4
  %12 = call i32 @make_dev(i32* @snp_cdevsw, i32 0, i32 %10, i32 %11, i32 384, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i32 %12, i32* @snp_dev, align 4
  store i32 0, i32* %4, align 4
  br label %18

13:                                               ; preds = %3
  %14 = load i32, i32* @snp_dev, align 4
  %15 = call i32 @destroy_dev(i32 %14)
  store i32 0, i32* %4, align 4
  br label %18

16:                                               ; preds = %3
  %17 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %17, i32* %4, align 4
  br label %18

18:                                               ; preds = %16, %13, %9
  %19 = load i32, i32* %4, align 4
  ret i32 %19
}

declare dso_local i32 @make_dev(i32*, i32, i32, i32, i32, i8*) #1

declare dso_local i32 @destroy_dev(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
