; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_setup_64.c_c_next.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_setup_64.c_c_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.seq_file*, i8*, i32*)* @c_next to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @c_next(%struct.seq_file* %0, i8* %1, i32* %2) #0 {
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32* %2, i32** %6, align 8
  %7 = load i32*, i32** %6, align 8
  %8 = load i32, i32* %7, align 4
  %9 = add nsw i32 %8, 1
  store i32 %9, i32* %7, align 4
  %10 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = call i8* @c_start(%struct.seq_file* %10, i32* %11)
  ret i8* %12
}

declare dso_local i8* @c_start(%struct.seq_file*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
