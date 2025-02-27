; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/riva/extr_rivafb-i2c.c_riva_gpio_setsda.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/riva/extr_rivafb-i2c.c_riva_gpio_setsda.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.riva_i2c_chan = type { i32, %struct.riva_par* }
%struct.riva_par = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @riva_gpio_setsda to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @riva_gpio_setsda(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.riva_i2c_chan*, align 8
  %6 = alloca %struct.riva_par*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i8*, i8** %3, align 8
  %9 = bitcast i8* %8 to %struct.riva_i2c_chan*
  store %struct.riva_i2c_chan* %9, %struct.riva_i2c_chan** %5, align 8
  %10 = load %struct.riva_i2c_chan*, %struct.riva_i2c_chan** %5, align 8
  %11 = getelementptr inbounds %struct.riva_i2c_chan, %struct.riva_i2c_chan* %10, i32 0, i32 1
  %12 = load %struct.riva_par*, %struct.riva_par** %11, align 8
  store %struct.riva_par* %12, %struct.riva_par** %6, align 8
  %13 = load %struct.riva_par*, %struct.riva_par** %6, align 8
  %14 = getelementptr inbounds %struct.riva_par, %struct.riva_par* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.riva_i2c_chan*, %struct.riva_i2c_chan** %5, align 8
  %18 = getelementptr inbounds %struct.riva_i2c_chan, %struct.riva_i2c_chan* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = add nsw i32 %19, 1
  %21 = call i32 @VGA_WR08(i32 %16, i32 980, i32 %20)
  %22 = load %struct.riva_par*, %struct.riva_par** %6, align 8
  %23 = getelementptr inbounds %struct.riva_par, %struct.riva_par* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @VGA_RD08(i32 %25, i32 981)
  %27 = and i32 %26, 240
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %4, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %2
  %31 = load i32, i32* %7, align 4
  %32 = or i32 %31, 16
  store i32 %32, i32* %7, align 4
  br label %36

33:                                               ; preds = %2
  %34 = load i32, i32* %7, align 4
  %35 = and i32 %34, -17
  store i32 %35, i32* %7, align 4
  br label %36

36:                                               ; preds = %33, %30
  %37 = load %struct.riva_par*, %struct.riva_par** %6, align 8
  %38 = getelementptr inbounds %struct.riva_par, %struct.riva_par* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.riva_i2c_chan*, %struct.riva_i2c_chan** %5, align 8
  %42 = getelementptr inbounds %struct.riva_i2c_chan, %struct.riva_i2c_chan* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = add nsw i32 %43, 1
  %45 = call i32 @VGA_WR08(i32 %40, i32 980, i32 %44)
  %46 = load %struct.riva_par*, %struct.riva_par** %6, align 8
  %47 = getelementptr inbounds %struct.riva_par, %struct.riva_par* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %7, align 4
  %51 = or i32 %50, 1
  %52 = call i32 @VGA_WR08(i32 %49, i32 981, i32 %51)
  ret void
}

declare dso_local i32 @VGA_WR08(i32, i32, i32) #1

declare dso_local i32 @VGA_RD08(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
