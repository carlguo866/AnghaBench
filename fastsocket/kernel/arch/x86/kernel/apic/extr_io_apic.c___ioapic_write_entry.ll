; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/apic/extr_io_apic.c___ioapic_write_entry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/apic/extr_io_apic.c___ioapic_write_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.IO_APIC_route_entry = type { i32 }
%union.entry_union = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@__const.__ioapic_write_entry.eu = private unnamed_addr constant { i32, [4 x i8] } { i32 0, [4 x i8] undef }, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32)* @__ioapic_write_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__ioapic_write_entry(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.IO_APIC_route_entry, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %union.entry_union, align 4
  %8 = getelementptr inbounds %struct.IO_APIC_route_entry, %struct.IO_APIC_route_entry* %4, i32 0, i32 0
  store i32 %2, i32* %8, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  %9 = bitcast %union.entry_union* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %9, i8* align 4 bitcast ({ i32, [4 x i8] }* @__const.__ioapic_write_entry.eu to i8*), i64 8, i1 false)
  %10 = bitcast %union.entry_union* %7 to %struct.IO_APIC_route_entry*
  %11 = bitcast %struct.IO_APIC_route_entry* %10 to i8*
  %12 = bitcast %struct.IO_APIC_route_entry* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %11, i8* align 4 %12, i64 4, i1 false)
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* %6, align 4
  %15 = mul nsw i32 2, %14
  %16 = add nsw i32 17, %15
  %17 = bitcast %union.entry_union* %7 to i32*
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @io_apic_write(i32 %13, i32 %16, i32 %18)
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* %6, align 4
  %22 = mul nsw i32 2, %21
  %23 = add nsw i32 16, %22
  %24 = bitcast %union.entry_union* %7 to i32*
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @io_apic_write(i32 %20, i32 %23, i32 %25)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @io_apic_write(i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
