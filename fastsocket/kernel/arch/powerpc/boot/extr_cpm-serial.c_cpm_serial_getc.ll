; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/boot/extr_cpm-serial.c_cpm_serial_getc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/boot/extr_cpm-serial.c_cpm_serial_getc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i32 }

@rbdf = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 ()* @cpm_serial_getc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @cpm_serial_getc() #0 {
  %1 = alloca i8, align 1
  br label %2

2:                                                ; preds = %6, %0
  %3 = call i32 (...) @cpm_serial_tstc()
  %4 = icmp ne i32 %3, 0
  %5 = xor i1 %4, true
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  br label %2

7:                                                ; preds = %2
  %8 = call i32 (...) @sync()
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rbdf, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  %12 = getelementptr inbounds i8, i8* %11, i64 0
  %13 = load i8, i8* %12, align 1
  store i8 %13, i8* %1, align 1
  %14 = call i32 (...) @eieio()
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rbdf, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = or i32 %17, 32768
  store i32 %18, i32* %16, align 8
  %19 = load i8, i8* %1, align 1
  ret i8 %19
}

declare dso_local i32 @cpm_serial_tstc(...) #1

declare dso_local i32 @sync(...) #1

declare dso_local i32 @eieio(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
