; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ipfw/extr_dummynet.c_o_next.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ipfw/extr_dummynet.c_o_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dn_id = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.dn_id**, i32, i32)* @o_next to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @o_next(%struct.dn_id** %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.dn_id**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.dn_id*, align 8
  store %struct.dn_id** %0, %struct.dn_id*** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.dn_id**, %struct.dn_id*** %4, align 8
  %9 = load %struct.dn_id*, %struct.dn_id** %8, align 8
  store %struct.dn_id* %9, %struct.dn_id** %7, align 8
  %10 = load %struct.dn_id*, %struct.dn_id** %7, align 8
  %11 = bitcast %struct.dn_id* %10 to i8*
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @oid_fill(i8* %11, i32 %12, i32 %13, i32 0)
  %15 = load %struct.dn_id**, %struct.dn_id*** %4, align 8
  %16 = load %struct.dn_id*, %struct.dn_id** %15, align 8
  %17 = bitcast %struct.dn_id* %16 to i8*
  %18 = load i32, i32* %5, align 4
  %19 = call i8* @O_NEXT(i8* %17, i32 %18)
  %20 = bitcast i8* %19 to %struct.dn_id*
  %21 = load %struct.dn_id**, %struct.dn_id*** %4, align 8
  store %struct.dn_id* %20, %struct.dn_id** %21, align 8
  %22 = load %struct.dn_id*, %struct.dn_id** %7, align 8
  %23 = bitcast %struct.dn_id* %22 to i8*
  ret i8* %23
}

declare dso_local i32 @oid_fill(i8*, i32, i32, i32) #1

declare dso_local i8* @O_NEXT(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
