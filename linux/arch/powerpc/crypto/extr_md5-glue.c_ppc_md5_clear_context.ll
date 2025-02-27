; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/crypto/extr_md5-glue.c_ppc_md5_clear_context.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/crypto/extr_md5-glue.c_ppc_md5_clear_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.md5_state = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.md5_state*)* @ppc_md5_clear_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ppc_md5_clear_context(%struct.md5_state* %0) #0 {
  %2 = alloca %struct.md5_state*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  store %struct.md5_state* %0, %struct.md5_state** %2, align 8
  store i32 1, i32* %3, align 4
  %5 = load %struct.md5_state*, %struct.md5_state** %2, align 8
  %6 = bitcast %struct.md5_state* %5 to i32*
  store i32* %6, i32** %4, align 8
  %7 = call i32 @BUILD_BUG_ON(i32 0)
  br label %8

8:                                                ; preds = %11, %1
  %9 = load i32*, i32** %4, align 8
  %10 = getelementptr inbounds i32, i32* %9, i32 1
  store i32* %10, i32** %4, align 8
  store i32 0, i32* %9, align 4
  br label %11

11:                                               ; preds = %8
  %12 = load i32, i32* %3, align 4
  %13 = add nsw i32 %12, -1
  store i32 %13, i32* %3, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %8, label %15

15:                                               ; preds = %11
  ret void
}

declare dso_local i32 @BUILD_BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
