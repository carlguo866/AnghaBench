; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/pciconf/extr_pciconf.c_readone.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/pciconf/extr_pciconf.c_readone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcisel = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"%0*x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.pcisel*, i64, i32)* @readone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @readone(i32 %0, %struct.pcisel* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pcisel*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.pcisel* %1, %struct.pcisel** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* %8, align 4
  %10 = mul nsw i32 %9, 2
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.pcisel*, %struct.pcisel** %6, align 8
  %13 = load i64, i64* %7, align 8
  %14 = load i32, i32* %8, align 4
  %15 = call i32 @read_config(i32 %11, %struct.pcisel* %12, i64 %13, i32 %14)
  %16 = call i32 @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %10, i32 %15)
  ret void
}

declare dso_local i32 @printf(i8*, i32, i32) #1

declare dso_local i32 @read_config(i32, %struct.pcisel*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
