; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stb0899_drv.c_stb0899_diseqc_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stb0899_drv.c_stb0899_diseqc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stb0899_state = type { i32 }

@STB0899_DISCNTRL2 = common dso_local global i32 0, align 4
@ONECHIP_TRX = common dso_local global i32 0, align 4
@STB0899_DISCNTRL1 = common dso_local global i32 0, align 4
@DISEQCRESET = common dso_local global i32 0, align 4
@STB0899_DISF22 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stb0899_state*)* @stb0899_diseqc_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stb0899_diseqc_init(%struct.stb0899_state* %0) #0 {
  %2 = alloca %struct.stb0899_state*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.stb0899_state* %0, %struct.stb0899_state** %2, align 8
  store i32 22000, i32* %6, align 4
  %7 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %8 = load i32, i32* @STB0899_DISCNTRL2, align 4
  %9 = call i32 @stb0899_read_reg(%struct.stb0899_state* %7, i32 %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* @ONECHIP_TRX, align 4
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @STB0899_SETFIELD_VAL(i32 %10, i32 %11, i32 0)
  %13 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %14 = load i32, i32* @STB0899_DISCNTRL2, align 4
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @stb0899_write_reg(%struct.stb0899_state* %13, i32 %14, i32 %15)
  %17 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %18 = load i32, i32* @STB0899_DISCNTRL1, align 4
  %19 = call i32 @stb0899_read_reg(%struct.stb0899_state* %17, i32 %18)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* @DISEQCRESET, align 4
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @STB0899_SETFIELD_VAL(i32 %20, i32 %21, i32 1)
  %23 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %24 = load i32, i32* @STB0899_DISCNTRL1, align 4
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @stb0899_write_reg(%struct.stb0899_state* %23, i32 %24, i32 %25)
  %27 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %28 = load i32, i32* @STB0899_DISCNTRL1, align 4
  %29 = call i32 @stb0899_read_reg(%struct.stb0899_state* %27, i32 %28)
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* @DISEQCRESET, align 4
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @STB0899_SETFIELD_VAL(i32 %30, i32 %31, i32 0)
  %33 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %34 = load i32, i32* @STB0899_DISCNTRL1, align 4
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @stb0899_write_reg(%struct.stb0899_state* %33, i32 %34, i32 %35)
  %37 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %38 = call i32 @stb0899_get_mclk(%struct.stb0899_state* %37)
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* %6, align 4
  %41 = mul nsw i32 %40, 32
  %42 = sdiv i32 %39, %41
  store i32 %42, i32* %3, align 4
  %43 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %44 = load i32, i32* @STB0899_DISF22, align 4
  %45 = load i32, i32* %3, align 4
  %46 = call i32 @stb0899_write_reg(%struct.stb0899_state* %43, i32 %44, i32 %45)
  %47 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %48 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %47, i32 0, i32 0
  store i32 20000, i32* %48, align 4
  ret i32 0
}

declare dso_local i32 @stb0899_read_reg(%struct.stb0899_state*, i32) #1

declare dso_local i32 @STB0899_SETFIELD_VAL(i32, i32, i32) #1

declare dso_local i32 @stb0899_write_reg(%struct.stb0899_state*, i32, i32) #1

declare dso_local i32 @stb0899_get_mclk(%struct.stb0899_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
