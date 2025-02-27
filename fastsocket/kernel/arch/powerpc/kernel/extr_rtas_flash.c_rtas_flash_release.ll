; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_rtas_flash.c_rtas_flash_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_rtas_flash.c_rtas_flash_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.proc_dir_entry = type { i32, i64 }
%struct.rtas_update_flash_t = type { i64, i32* }

@rtas_firmware_flash_list = common dso_local global i32* null, align 8
@FLASH_AUTH = common dso_local global i64 0, align 8
@FLASH_IMG_READY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @rtas_flash_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtas_flash_release(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.proc_dir_entry*, align 8
  %6 = alloca %struct.rtas_update_flash_t*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %7 = load %struct.file*, %struct.file** %4, align 8
  %8 = getelementptr inbounds %struct.file, %struct.file* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.proc_dir_entry* @PDE(i32 %12)
  store %struct.proc_dir_entry* %13, %struct.proc_dir_entry** %5, align 8
  %14 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %5, align 8
  %15 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.rtas_update_flash_t*
  store %struct.rtas_update_flash_t* %17, %struct.rtas_update_flash_t** %6, align 8
  %18 = load %struct.rtas_update_flash_t*, %struct.rtas_update_flash_t** %6, align 8
  %19 = getelementptr inbounds %struct.rtas_update_flash_t, %struct.rtas_update_flash_t* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %59

22:                                               ; preds = %2
  %23 = load i32*, i32** @rtas_firmware_flash_list, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = load i32*, i32** @rtas_firmware_flash_list, align 8
  %27 = call i32 @free_flash_list(i32* %26)
  store i32* null, i32** @rtas_firmware_flash_list, align 8
  br label %28

28:                                               ; preds = %25, %22
  %29 = load %struct.rtas_update_flash_t*, %struct.rtas_update_flash_t** %6, align 8
  %30 = getelementptr inbounds %struct.rtas_update_flash_t, %struct.rtas_update_flash_t* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @FLASH_AUTH, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %28
  %35 = load %struct.rtas_update_flash_t*, %struct.rtas_update_flash_t** %6, align 8
  %36 = getelementptr inbounds %struct.rtas_update_flash_t, %struct.rtas_update_flash_t* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = call i64 @flash_list_valid(i32* %37)
  %39 = load %struct.rtas_update_flash_t*, %struct.rtas_update_flash_t** %6, align 8
  %40 = getelementptr inbounds %struct.rtas_update_flash_t, %struct.rtas_update_flash_t* %39, i32 0, i32 0
  store i64 %38, i64* %40, align 8
  br label %41

41:                                               ; preds = %34, %28
  %42 = load %struct.rtas_update_flash_t*, %struct.rtas_update_flash_t** %6, align 8
  %43 = getelementptr inbounds %struct.rtas_update_flash_t, %struct.rtas_update_flash_t* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @FLASH_IMG_READY, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %41
  %48 = load %struct.rtas_update_flash_t*, %struct.rtas_update_flash_t** %6, align 8
  %49 = getelementptr inbounds %struct.rtas_update_flash_t, %struct.rtas_update_flash_t* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  store i32* %50, i32** @rtas_firmware_flash_list, align 8
  br label %56

51:                                               ; preds = %41
  %52 = load %struct.rtas_update_flash_t*, %struct.rtas_update_flash_t** %6, align 8
  %53 = getelementptr inbounds %struct.rtas_update_flash_t, %struct.rtas_update_flash_t* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = call i32 @free_flash_list(i32* %54)
  br label %56

56:                                               ; preds = %51, %47
  %57 = load %struct.rtas_update_flash_t*, %struct.rtas_update_flash_t** %6, align 8
  %58 = getelementptr inbounds %struct.rtas_update_flash_t, %struct.rtas_update_flash_t* %57, i32 0, i32 1
  store i32* null, i32** %58, align 8
  br label %59

59:                                               ; preds = %56, %2
  %60 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %5, align 8
  %61 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %60, i32 0, i32 0
  %62 = call i32 @atomic_dec(i32* %61)
  ret i32 0
}

declare dso_local %struct.proc_dir_entry* @PDE(i32) #1

declare dso_local i32 @free_flash_list(i32*) #1

declare dso_local i64 @flash_list_valid(i32*) #1

declare dso_local i32 @atomic_dec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
