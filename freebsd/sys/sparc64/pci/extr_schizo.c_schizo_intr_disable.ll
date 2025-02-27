; ModuleID = '/home/carl/AnghaBench/freebsd/sys/sparc64/pci/extr_schizo.c_schizo_intr_disable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/sparc64/pci/extr_schizo.c_schizo_intr_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intr_vector = type { i32, %struct.schizo_icarg* }
%struct.schizo_icarg = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @schizo_intr_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @schizo_intr_disable(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.intr_vector*, align 8
  %4 = alloca %struct.schizo_icarg*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.intr_vector*
  store %struct.intr_vector* %6, %struct.intr_vector** %3, align 8
  %7 = load %struct.intr_vector*, %struct.intr_vector** %3, align 8
  %8 = getelementptr inbounds %struct.intr_vector, %struct.intr_vector* %7, i32 0, i32 1
  %9 = load %struct.schizo_icarg*, %struct.schizo_icarg** %8, align 8
  store %struct.schizo_icarg* %9, %struct.schizo_icarg** %4, align 8
  %10 = load %struct.schizo_icarg*, %struct.schizo_icarg** %4, align 8
  %11 = getelementptr inbounds %struct.schizo_icarg, %struct.schizo_icarg* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.schizo_icarg*, %struct.schizo_icarg** %4, align 8
  %14 = getelementptr inbounds %struct.schizo_icarg, %struct.schizo_icarg* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.intr_vector*, %struct.intr_vector** %3, align 8
  %17 = getelementptr inbounds %struct.intr_vector, %struct.intr_vector* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @SCHIZO_PCI_WRITE_8(i32 %12, i32 %15, i32 %18)
  ret void
}

declare dso_local i32 @SCHIZO_PCI_WRITE_8(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
