; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/oprofile/extr_oprofilefs.c_oprofilefs_create_file.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/oprofile/extr_oprofilefs.c_oprofilefs_create_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.dentry = type { i32 }
%struct.file_operations = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @oprofilefs_create_file(%struct.super_block* %0, %struct.dentry* %1, i8* %2, %struct.file_operations* %3) #0 {
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.file_operations*, align 8
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store i8* %2, i8** %7, align 8
  store %struct.file_operations* %3, %struct.file_operations** %8, align 8
  %9 = load %struct.super_block*, %struct.super_block** %5, align 8
  %10 = load %struct.dentry*, %struct.dentry** %6, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = load %struct.file_operations*, %struct.file_operations** %8, align 8
  %13 = call i32 @__oprofilefs_create_file(%struct.super_block* %9, %struct.dentry* %10, i8* %11, %struct.file_operations* %12, i32 420, i32* null)
  ret i32 %13
}

declare dso_local i32 @__oprofilefs_create_file(%struct.super_block*, %struct.dentry*, i8*, %struct.file_operations*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
