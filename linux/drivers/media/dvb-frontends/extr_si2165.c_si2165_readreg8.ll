; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_si2165.c_si2165_readreg8.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_si2165.c_si2165_readreg8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.si2165_state = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"reg read: R(0x%04x)=0x%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.si2165_state*, i32, i64*)* @si2165_readreg8 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si2165_readreg8(%struct.si2165_state* %0, i32 %1, i64* %2) #0 {
  %4 = alloca %struct.si2165_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.si2165_state* %0, %struct.si2165_state** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64* %2, i64** %6, align 8
  %9 = load %struct.si2165_state*, %struct.si2165_state** %4, align 8
  %10 = getelementptr inbounds %struct.si2165_state, %struct.si2165_state* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @regmap_read(i32 %11, i32 %12, i32* %7)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %7, align 4
  %15 = zext i32 %14 to i64
  %16 = load i64*, i64** %6, align 8
  store i64 %15, i64* %16, align 8
  %17 = load %struct.si2165_state*, %struct.si2165_state** %4, align 8
  %18 = getelementptr inbounds %struct.si2165_state, %struct.si2165_state* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %5, align 4
  %22 = load i64*, i64** %6, align 8
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @dev_dbg(i32* %20, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %21, i64 %23)
  %25 = load i32, i32* %8, align 4
  ret i32 %25
}

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
