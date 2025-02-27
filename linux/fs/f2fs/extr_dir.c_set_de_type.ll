; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_dir.c_set_de_type.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_dir.c_set_de_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_dir_entry = type { i32 }

@f2fs_type_by_mode = common dso_local global i32* null, align 8
@S_IFMT = common dso_local global i64 0, align 8
@S_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.f2fs_dir_entry*, i64)* @set_de_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_de_type(%struct.f2fs_dir_entry* %0, i64 %1) #0 {
  %3 = alloca %struct.f2fs_dir_entry*, align 8
  %4 = alloca i64, align 8
  store %struct.f2fs_dir_entry* %0, %struct.f2fs_dir_entry** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i32*, i32** @f2fs_type_by_mode, align 8
  %6 = load i64, i64* %4, align 8
  %7 = load i64, i64* @S_IFMT, align 8
  %8 = and i64 %6, %7
  %9 = load i64, i64* @S_SHIFT, align 8
  %10 = lshr i64 %8, %9
  %11 = getelementptr inbounds i32, i32* %5, i64 %10
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.f2fs_dir_entry*, %struct.f2fs_dir_entry** %3, align 8
  %14 = getelementptr inbounds %struct.f2fs_dir_entry, %struct.f2fs_dir_entry* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
