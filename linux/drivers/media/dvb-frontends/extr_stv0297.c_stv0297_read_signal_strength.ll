; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv0297.c_stv0297_read_signal_strength.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv0297.c_stv0297_read_signal_strength.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.stv0297_state* }
%struct.stv0297_state = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32*)* @stv0297_read_signal_strength to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stv0297_read_signal_strength(%struct.dvb_frontend* %0, i32* %1) #0 {
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.stv0297_state*, align 8
  %6 = alloca [3 x i32], align 4
  %7 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %9 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %8, i32 0, i32 0
  %10 = load %struct.stv0297_state*, %struct.stv0297_state** %9, align 8
  store %struct.stv0297_state* %10, %struct.stv0297_state** %5, align 8
  %11 = load %struct.stv0297_state*, %struct.stv0297_state** %5, align 8
  %12 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 0
  %13 = call i32 @stv0297_readregs(%struct.stv0297_state* %11, i32 65, i32* %12, i32 3)
  %14 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 1
  %15 = load i32, i32* %14, align 4
  %16 = and i32 %15, 3
  %17 = shl i32 %16, 8
  %18 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 0
  %19 = load i32, i32* %18, align 4
  %20 = or i32 %17, %19
  store i32 %20, i32* %7, align 4
  %21 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 2
  %22 = load i32, i32* %21, align 4
  %23 = and i32 %22, 32
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %2
  %26 = load i32, i32* %7, align 4
  %27 = icmp slt i32 %26, 512
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  store i32 0, i32* %7, align 4
  br label %32

29:                                               ; preds = %25
  %30 = load i32, i32* %7, align 4
  %31 = sub nsw i32 %30, 512
  store i32 %31, i32* %7, align 4
  br label %32

32:                                               ; preds = %29, %28
  br label %41

33:                                               ; preds = %2
  %34 = load i32, i32* %7, align 4
  %35 = icmp sgt i32 %34, 511
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  store i32 0, i32* %7, align 4
  br label %40

37:                                               ; preds = %33
  %38 = load i32, i32* %7, align 4
  %39 = sub nsw i32 511, %38
  store i32 %39, i32* %7, align 4
  br label %40

40:                                               ; preds = %37, %36
  br label %41

41:                                               ; preds = %40, %32
  %42 = load i32, i32* %7, align 4
  %43 = shl i32 %42, 7
  %44 = load i32, i32* %7, align 4
  %45 = ashr i32 %44, 2
  %46 = or i32 %43, %45
  %47 = load i32*, i32** %4, align 8
  store i32 %46, i32* %47, align 4
  ret i32 0
}

declare dso_local i32 @stv0297_readregs(%struct.stv0297_state*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
