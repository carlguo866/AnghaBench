; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elflink.c_elf_sort_symbol.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elflink.c_elf_sort_symbol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elf_link_hash_entry = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @elf_sort_symbol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @elf_sort_symbol(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.elf_link_hash_entry*, align 8
  %7 = alloca %struct.elf_link_hash_entry*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.elf_link_hash_entry**
  %12 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %11, align 8
  store %struct.elf_link_hash_entry* %12, %struct.elf_link_hash_entry** %6, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to %struct.elf_link_hash_entry**
  %15 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %14, align 8
  store %struct.elf_link_hash_entry* %15, %struct.elf_link_hash_entry** %7, align 8
  %16 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %6, align 8
  %17 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %7, align 8
  %23 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = sub nsw i64 %21, %27
  store i64 %28, i64* %8, align 8
  %29 = load i64, i64* %8, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %2
  %32 = load i64, i64* %8, align 8
  %33 = icmp sgt i64 %32, 0
  %34 = zext i1 %33 to i64
  %35 = select i1 %33, i32 1, i32 -1
  store i32 %35, i32* %3, align 4
  br label %63

36:                                               ; preds = %2
  %37 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %6, align 8
  %38 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.elf_link_hash_entry*, %struct.elf_link_hash_entry** %7, align 8
  %46 = getelementptr inbounds %struct.elf_link_hash_entry, %struct.elf_link_hash_entry* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = sub nsw i64 %44, %52
  store i64 %53, i64* %9, align 8
  %54 = load i64, i64* %9, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %36
  %57 = load i64, i64* %9, align 8
  %58 = icmp sgt i64 %57, 0
  %59 = zext i1 %58 to i64
  %60 = select i1 %58, i32 1, i32 -1
  store i32 %60, i32* %3, align 4
  br label %63

61:                                               ; preds = %36
  br label %62

62:                                               ; preds = %61
  store i32 0, i32* %3, align 4
  br label %63

63:                                               ; preds = %62, %56, %31
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
