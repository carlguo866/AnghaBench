; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/cpio/extr_cpio.c_lookup_gname.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/cpio/extr_cpio.c_lookup_gname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpio = type { i32 }

@lookup_gname_helper = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.cpio*, i64)* @lookup_gname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @lookup_gname(%struct.cpio* %0, i64 %1) #0 {
  %3 = alloca %struct.cpio*, align 8
  %4 = alloca i64, align 8
  store %struct.cpio* %0, %struct.cpio** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %struct.cpio*, %struct.cpio** %3, align 8
  %6 = load %struct.cpio*, %struct.cpio** %3, align 8
  %7 = getelementptr inbounds %struct.cpio, %struct.cpio* %6, i32 0, i32 0
  %8 = load i64, i64* %4, align 8
  %9 = trunc i64 %8 to i32
  %10 = call i8* @lookup_name(%struct.cpio* %5, i32* %7, i32* @lookup_gname_helper, i32 %9)
  ret i8* %10
}

declare dso_local i8* @lookup_name(%struct.cpio*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
