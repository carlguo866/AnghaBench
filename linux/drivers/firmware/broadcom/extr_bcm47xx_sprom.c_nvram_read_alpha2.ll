; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/broadcom/extr_bcm47xx_sprom.c_nvram_read_alpha2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/broadcom/extr_bcm47xx_sprom.c_nvram_read_alpha2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [23 x i8] c"alpha2 is too long %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i8*, i32)* @nvram_read_alpha2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvram_read_alpha2(i8* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [10 x i8], align 1
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load i8*, i8** %5, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = getelementptr inbounds [10 x i8], [10 x i8]* %9, i64 0, i64 0
  %14 = load i32, i32* %8, align 4
  %15 = call i32 @get_nvram_var(i8* %11, i32* null, i8* %12, i8* %13, i32 10, i32 %14)
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* %10, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %4
  br label %36

19:                                               ; preds = %4
  %20 = getelementptr inbounds [10 x i8], [10 x i8]* %9, i64 0, i64 0
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %22, 48
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  br label %36

25:                                               ; preds = %19
  %26 = getelementptr inbounds [10 x i8], [10 x i8]* %9, i64 0, i64 0
  %27 = call i32 @strlen(i8* %26)
  %28 = icmp sgt i32 %27, 2
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = getelementptr inbounds [10 x i8], [10 x i8]* %9, i64 0, i64 0
  %31 = call i32 @pr_warn(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %30)
  br label %36

32:                                               ; preds = %25
  %33 = load i8*, i8** %7, align 8
  %34 = getelementptr inbounds [10 x i8], [10 x i8]* %9, i64 0, i64 0
  %35 = call i32 @memcpy(i8* %33, i8* %34, i32 2)
  br label %36

36:                                               ; preds = %32, %29, %24, %18
  ret void
}

declare dso_local i32 @get_nvram_var(i8*, i32*, i8*, i8*, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @pr_warn(i8*, i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
