; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_linker.c__bfd_link_hash_table_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_linker.c__bfd_link_hash_table_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfd_link_hash_table = type { i32, i32, i32*, i32*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.bfd_hash_entry = type opaque
%struct.bfd_hash_table = type opaque
%struct.bfd_hash_entry.0 = type opaque
%struct.bfd_hash_table.1 = type opaque

@bfd_link_generic_hash_table = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_bfd_link_hash_table_init(%struct.bfd_link_hash_table* %0, %struct.TYPE_3__* %1, %struct.bfd_hash_entry* (%struct.bfd_hash_entry*, %struct.bfd_hash_table*, i8*)* %2, i32 %3) #0 {
  %5 = alloca %struct.bfd_link_hash_table*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca %struct.bfd_hash_entry* (%struct.bfd_hash_entry*, %struct.bfd_hash_table*, i8*)*, align 8
  %8 = alloca i32, align 4
  store %struct.bfd_link_hash_table* %0, %struct.bfd_link_hash_table** %5, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %6, align 8
  store %struct.bfd_hash_entry* (%struct.bfd_hash_entry*, %struct.bfd_hash_table*, i8*)* %2, %struct.bfd_hash_entry* (%struct.bfd_hash_entry*, %struct.bfd_hash_table*, i8*)** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.bfd_link_hash_table*, %struct.bfd_link_hash_table** %5, align 8
  %13 = getelementptr inbounds %struct.bfd_link_hash_table, %struct.bfd_link_hash_table* %12, i32 0, i32 4
  store i32 %11, i32* %13, align 8
  %14 = load %struct.bfd_link_hash_table*, %struct.bfd_link_hash_table** %5, align 8
  %15 = getelementptr inbounds %struct.bfd_link_hash_table, %struct.bfd_link_hash_table* %14, i32 0, i32 3
  store i32* null, i32** %15, align 8
  %16 = load %struct.bfd_link_hash_table*, %struct.bfd_link_hash_table** %5, align 8
  %17 = getelementptr inbounds %struct.bfd_link_hash_table, %struct.bfd_link_hash_table* %16, i32 0, i32 2
  store i32* null, i32** %17, align 8
  %18 = load i32, i32* @bfd_link_generic_hash_table, align 4
  %19 = load %struct.bfd_link_hash_table*, %struct.bfd_link_hash_table** %5, align 8
  %20 = getelementptr inbounds %struct.bfd_link_hash_table, %struct.bfd_link_hash_table* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 4
  %21 = load %struct.bfd_link_hash_table*, %struct.bfd_link_hash_table** %5, align 8
  %22 = getelementptr inbounds %struct.bfd_link_hash_table, %struct.bfd_link_hash_table* %21, i32 0, i32 0
  %23 = load %struct.bfd_hash_entry* (%struct.bfd_hash_entry*, %struct.bfd_hash_table*, i8*)*, %struct.bfd_hash_entry* (%struct.bfd_hash_entry*, %struct.bfd_hash_table*, i8*)** %7, align 8
  %24 = bitcast %struct.bfd_hash_entry* (%struct.bfd_hash_entry*, %struct.bfd_hash_table*, i8*)* %23 to %struct.bfd_hash_entry.0* (%struct.bfd_hash_entry.0*, %struct.bfd_hash_table.1*, i8*)*
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @bfd_hash_table_init(i32* %22, %struct.bfd_hash_entry.0* (%struct.bfd_hash_entry.0*, %struct.bfd_hash_table.1*, i8*)* %24, i32 %25)
  ret i32 %26
}

declare dso_local i32 @bfd_hash_table_init(i32*, %struct.bfd_hash_entry.0* (%struct.bfd_hash_entry.0*, %struct.bfd_hash_table.1*, i8*)*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
