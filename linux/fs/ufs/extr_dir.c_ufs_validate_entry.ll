; ModuleID = '/home/carl/AnghaBench/linux/fs/ufs/extr_dir.c_ufs_validate_entry.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ufs/extr_dir.c_ufs_validate_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.ufs_dir_entry = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, i8*, i32, i32)* @ufs_validate_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ufs_validate_entry(%struct.super_block* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ufs_dir_entry*, align 8
  %10 = alloca %struct.ufs_dir_entry*, align 8
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i8*, i8** %6, align 8
  %12 = load i32, i32* %7, align 4
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds i8, i8* %11, i64 %13
  %15 = bitcast i8* %14 to %struct.ufs_dir_entry*
  store %struct.ufs_dir_entry* %15, %struct.ufs_dir_entry** %9, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* %8, align 4
  %19 = and i32 %17, %18
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds i8, i8* %16, i64 %20
  %22 = bitcast i8* %21 to %struct.ufs_dir_entry*
  store %struct.ufs_dir_entry* %22, %struct.ufs_dir_entry** %10, align 8
  br label %23

23:                                               ; preds = %29, %4
  %24 = load %struct.ufs_dir_entry*, %struct.ufs_dir_entry** %10, align 8
  %25 = bitcast %struct.ufs_dir_entry* %24 to i8*
  %26 = load %struct.ufs_dir_entry*, %struct.ufs_dir_entry** %9, align 8
  %27 = bitcast %struct.ufs_dir_entry* %26 to i8*
  %28 = icmp ult i8* %25, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %23
  %30 = load %struct.super_block*, %struct.super_block** %5, align 8
  %31 = load %struct.ufs_dir_entry*, %struct.ufs_dir_entry** %10, align 8
  %32 = call %struct.ufs_dir_entry* @ufs_next_entry(%struct.super_block* %30, %struct.ufs_dir_entry* %31)
  store %struct.ufs_dir_entry* %32, %struct.ufs_dir_entry** %10, align 8
  br label %23

33:                                               ; preds = %23
  %34 = load %struct.ufs_dir_entry*, %struct.ufs_dir_entry** %10, align 8
  %35 = bitcast %struct.ufs_dir_entry* %34 to i8*
  %36 = load i8*, i8** %6, align 8
  %37 = ptrtoint i8* %35 to i64
  %38 = ptrtoint i8* %36 to i64
  %39 = sub i64 %37, %38
  %40 = trunc i64 %39 to i32
  ret i32 %40
}

declare dso_local %struct.ufs_dir_entry* @ufs_next_entry(%struct.super_block*, %struct.ufs_dir_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
