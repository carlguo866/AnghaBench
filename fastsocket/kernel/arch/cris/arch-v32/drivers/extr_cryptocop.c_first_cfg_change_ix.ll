; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v32/drivers/extr_cryptocop.c_first_cfg_change_ix.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v32/drivers/extr_cryptocop.c_first_cfg_change_ix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strcop_crypto_op = type { i64, i64, i64, i64, i64, i64 }

@.str = private unnamed_addr constant [28 x i8] c"first_cfg_change_ix: ix=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.strcop_crypto_op*)* @first_cfg_change_ix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @first_cfg_change_ix(%struct.strcop_crypto_op* %0) #0 {
  %2 = alloca %struct.strcop_crypto_op*, align 8
  %3 = alloca i64, align 8
  store %struct.strcop_crypto_op* %0, %struct.strcop_crypto_op** %2, align 8
  store i64 0, i64* %3, align 8
  %4 = load %struct.strcop_crypto_op*, %struct.strcop_crypto_op** %2, align 8
  %5 = getelementptr inbounds %struct.strcop_crypto_op, %struct.strcop_crypto_op* %4, i32 0, i32 5
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load %struct.strcop_crypto_op*, %struct.strcop_crypto_op** %2, align 8
  %10 = getelementptr inbounds %struct.strcop_crypto_op, %struct.strcop_crypto_op* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %3, align 8
  br label %12

12:                                               ; preds = %8, %1
  %13 = load %struct.strcop_crypto_op*, %struct.strcop_crypto_op** %2, align 8
  %14 = getelementptr inbounds %struct.strcop_crypto_op, %struct.strcop_crypto_op* %13, i32 0, i32 4
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %27

17:                                               ; preds = %12
  %18 = load %struct.strcop_crypto_op*, %struct.strcop_crypto_op** %2, align 8
  %19 = getelementptr inbounds %struct.strcop_crypto_op, %struct.strcop_crypto_op* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* %3, align 8
  %22 = icmp ult i64 %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %17
  %24 = load %struct.strcop_crypto_op*, %struct.strcop_crypto_op** %2, align 8
  %25 = getelementptr inbounds %struct.strcop_crypto_op, %struct.strcop_crypto_op* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %3, align 8
  br label %27

27:                                               ; preds = %23, %17, %12
  %28 = load %struct.strcop_crypto_op*, %struct.strcop_crypto_op** %2, align 8
  %29 = getelementptr inbounds %struct.strcop_crypto_op, %struct.strcop_crypto_op* %28, i32 0, i32 3
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %27
  %33 = load %struct.strcop_crypto_op*, %struct.strcop_crypto_op** %2, align 8
  %34 = getelementptr inbounds %struct.strcop_crypto_op, %struct.strcop_crypto_op* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* %3, align 8
  %37 = icmp ult i64 %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %32
  %39 = load %struct.strcop_crypto_op*, %struct.strcop_crypto_op** %2, align 8
  %40 = getelementptr inbounds %struct.strcop_crypto_op, %struct.strcop_crypto_op* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  store i64 %41, i64* %3, align 8
  br label %42

42:                                               ; preds = %38, %32, %27
  %43 = load i64, i64* %3, align 8
  %44 = call i32 @printk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 %43)
  %45 = call i32 @DEBUG(i32 %44)
  %46 = load i64, i64* %3, align 8
  ret i64 %46
}

declare dso_local i32 @DEBUG(i32) #1

declare dso_local i32 @printk(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
