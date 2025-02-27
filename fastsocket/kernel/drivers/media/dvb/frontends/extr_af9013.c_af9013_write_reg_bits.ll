; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_af9013.c_af9013_write_reg_bits.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_af9013.c_af9013_write_reg_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.af9013_state = type { i32 }

@regmask = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.af9013_state*, i32, i32, i32, i32)* @af9013_write_reg_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @af9013_write_reg_bits(%struct.af9013_state* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.af9013_state*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.af9013_state* %0, %struct.af9013_state** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load %struct.af9013_state*, %struct.af9013_state** %7, align 8
  %16 = load i32, i32* %8, align 4
  %17 = call i32 @af9013_read_reg(%struct.af9013_state* %15, i32 %16, i32* %13)
  store i32 %17, i32* %12, align 4
  %18 = load i32, i32* %12, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %5
  %21 = load i32, i32* %12, align 4
  store i32 %21, i32* %6, align 4
  br label %45

22:                                               ; preds = %5
  %23 = load i32*, i32** @regmask, align 8
  %24 = load i32, i32* %10, align 4
  %25 = sub nsw i32 %24, 1
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %23, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %9, align 4
  %30 = shl i32 %28, %29
  store i32 %30, i32* %14, align 4
  %31 = load i32, i32* %13, align 4
  %32 = load i32, i32* %14, align 4
  %33 = xor i32 %32, -1
  %34 = and i32 %31, %33
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* %9, align 4
  %37 = shl i32 %35, %36
  %38 = load i32, i32* %14, align 4
  %39 = and i32 %37, %38
  %40 = or i32 %34, %39
  store i32 %40, i32* %13, align 4
  %41 = load %struct.af9013_state*, %struct.af9013_state** %7, align 8
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* %13, align 4
  %44 = call i32 @af9013_write_reg(%struct.af9013_state* %41, i32 %42, i32 %43)
  store i32 %44, i32* %6, align 4
  br label %45

45:                                               ; preds = %22, %20
  %46 = load i32, i32* %6, align 4
  ret i32 %46
}

declare dso_local i32 @af9013_read_reg(%struct.af9013_state*, i32, i32*) #1

declare dso_local i32 @af9013_write_reg(%struct.af9013_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
