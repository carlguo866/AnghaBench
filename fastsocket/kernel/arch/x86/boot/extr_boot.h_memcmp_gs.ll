; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/boot/extr_boot.h_memcmp_gs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/boot/extr_boot.h_memcmp_gs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i64)* @memcmp_gs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @memcmp_gs(i8* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = load i32, i32* %5, align 4
  %10 = load i64, i64* %6, align 8
  %11 = call { i8*, i32, i64 } asm sideeffect "gs; repe; cmpsb; setnz $0", "=*qm,={di},={si},={cx},1,2,3,~{dirflag},~{fpsr},~{flags}"(i32* %7, i8* %8, i32 %9, i64 %10) #1, !srcloc !2
  %12 = extractvalue { i8*, i32, i64 } %11, 0
  %13 = extractvalue { i8*, i32, i64 } %11, 1
  %14 = extractvalue { i8*, i32, i64 } %11, 2
  store i8* %12, i8** %4, align 8
  store i32 %13, i32* %5, align 4
  store i64 %14, i64* %6, align 8
  %15 = load i32, i32* %7, align 4
  ret i32 %15
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 295}
