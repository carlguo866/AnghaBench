; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/frv/kernel/extr_gdb-stub.c_gdbstub_write_byte.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/frv/kernel/extr_gdb-stub.c_gdbstub_write_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @gdbstub_write_byte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gdbstub_write_byte(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i8*, i8** %4, align 8
  %8 = call i32 @gdbstub_addr_map(i8* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %22

11:                                               ; preds = %2
  %12 = load i32, i32* %5, align 4
  %13 = load i8*, i8** %4, align 8
  %14 = bitcast i8* %13 to i32*
  %15 = call i64 asm sideeffect "\09movgs\09gr0,brr\09\0A\09stb${2:I}\09$1,${2:M}\09\0A\09movsg\09brr,$0\09\0A", "=r,r,*m,~{dirflag},~{fpsr},~{flags}"(i32 %12, i32* %14) #2, !srcloc !2
  store i64 %15, i64* %6, align 8
  %16 = call i32 (...) @gdbstub_addr_unmap()
  %17 = load i64, i64* %6, align 8
  %18 = icmp ne i64 %17, 0
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i32 @likely(i32 %20)
  store i32 %21, i32* %3, align 4
  br label %22

22:                                               ; preds = %11, %10
  %23 = load i32, i32* %3, align 4
  ret i32 %23
}

declare dso_local i32 @gdbstub_addr_map(i8*) #1

declare dso_local i32 @gdbstub_addr_unmap(...) #1

declare dso_local i32 @likely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 409, i32 437, i32 464}
