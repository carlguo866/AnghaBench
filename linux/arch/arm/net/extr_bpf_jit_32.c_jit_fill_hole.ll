; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/net/extr_bpf_jit_32.c_jit_fill_hole.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/net/extr_bpf_jit_32.c_jit_fill_hole.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ARM_INST_UDF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @jit_fill_hole to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jit_fill_hole(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to i32*
  store i32* %7, i32** %5, align 8
  br label %8

8:                                                ; preds = %17, %2
  %9 = load i32, i32* %4, align 4
  %10 = zext i32 %9 to i64
  %11 = icmp uge i64 %10, 4
  br i1 %11, label %12, label %22

12:                                               ; preds = %8
  %13 = load i32, i32* @ARM_INST_UDF, align 4
  %14 = call i32 @__opcode_to_mem_arm(i32 %13)
  %15 = load i32*, i32** %5, align 8
  %16 = getelementptr inbounds i32, i32* %15, i32 1
  store i32* %16, i32** %5, align 8
  store i32 %14, i32* %15, align 4
  br label %17

17:                                               ; preds = %12
  %18 = load i32, i32* %4, align 4
  %19 = zext i32 %18 to i64
  %20 = sub i64 %19, 4
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %4, align 4
  br label %8

22:                                               ; preds = %8
  ret void
}

declare dso_local i32 @__opcode_to_mem_arm(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
