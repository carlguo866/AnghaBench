; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_charset.c_register_charset.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_charset.c_register_charset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.charset = type { %struct.charset* }

@all_charsets = common dso_local global %struct.charset* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.charset*)* @register_charset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @register_charset(%struct.charset* %0) #0 {
  %2 = alloca %struct.charset*, align 8
  %3 = alloca %struct.charset**, align 8
  store %struct.charset* %0, %struct.charset** %2, align 8
  store %struct.charset** @all_charsets, %struct.charset*** %3, align 8
  br label %4

4:                                                ; preds = %9, %1
  %5 = load %struct.charset**, %struct.charset*** %3, align 8
  %6 = load %struct.charset*, %struct.charset** %5, align 8
  %7 = icmp ne %struct.charset* %6, null
  br i1 %7, label %8, label %13

8:                                                ; preds = %4
  br label %9

9:                                                ; preds = %8
  %10 = load %struct.charset**, %struct.charset*** %3, align 8
  %11 = load %struct.charset*, %struct.charset** %10, align 8
  %12 = getelementptr inbounds %struct.charset, %struct.charset* %11, i32 0, i32 0
  store %struct.charset** %12, %struct.charset*** %3, align 8
  br label %4

13:                                               ; preds = %4
  %14 = load %struct.charset*, %struct.charset** %2, align 8
  %15 = getelementptr inbounds %struct.charset, %struct.charset* %14, i32 0, i32 0
  store %struct.charset* null, %struct.charset** %15, align 8
  %16 = load %struct.charset*, %struct.charset** %2, align 8
  %17 = load %struct.charset**, %struct.charset*** %3, align 8
  store %struct.charset* %16, %struct.charset** %17, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
