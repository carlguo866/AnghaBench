; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-common/file/extr_retro_dirent.c_retro_dirent_is_dir.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-common/file/extr_retro_dirent.c_retro_dirent_is_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.RDIR = type { i32 }
%struct.retro_vfs_dir_handle = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @retro_dirent_is_dir(%struct.RDIR* %0, i8* %1) #0 {
  %3 = alloca %struct.RDIR*, align 8
  %4 = alloca i8*, align 8
  store %struct.RDIR* %0, %struct.RDIR** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.RDIR*, %struct.RDIR** %3, align 8
  %6 = bitcast %struct.RDIR* %5 to %struct.retro_vfs_dir_handle*
  %7 = call i32 @dirent_dirent_is_dir_cb(%struct.retro_vfs_dir_handle* %6)
  ret i32 %7
}

declare dso_local i32 @dirent_dirent_is_dir_cb(%struct.retro_vfs_dir_handle*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
