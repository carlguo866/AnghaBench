; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/vmcs_host/extr_vc_vchi_filesys.c_fs_host_direntbytestream_create.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/vmcs_host/extr_vc_vchi_filesys.c_fs_host_direntbytestream_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dirent = type { i32, i32, i32, i32 }

@D_NAME_MAX_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dirent*, i8*)* @fs_host_direntbytestream_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fs_host_direntbytestream_create(%struct.dirent* %0, i8* %1) #0 {
  %3 = alloca %struct.dirent*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store %struct.dirent* %0, %struct.dirent** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  store i8* %6, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = load %struct.dirent*, %struct.dirent** %3, align 8
  %9 = getelementptr inbounds %struct.dirent, %struct.dirent* %8, i32 0, i32 3
  %10 = load i32, i32* @D_NAME_MAX_SIZE, align 4
  %11 = call i32 @memcpy(i8* %7, i32* %9, i32 %10)
  %12 = load i32, i32* @D_NAME_MAX_SIZE, align 4
  %13 = load i8*, i8** %5, align 8
  %14 = sext i32 %12 to i64
  %15 = getelementptr inbounds i8, i8* %13, i64 %14
  store i8* %15, i8** %5, align 8
  %16 = load %struct.dirent*, %struct.dirent** %3, align 8
  %17 = getelementptr inbounds %struct.dirent, %struct.dirent* %16, i32 0, i32 2
  %18 = bitcast i32* %17 to i8*
  %19 = load i8*, i8** %5, align 8
  %20 = call i32 @write_bytestream(i8* %18, i8* %19, i32 4)
  %21 = load i8*, i8** %5, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 4
  store i8* %22, i8** %5, align 8
  %23 = load %struct.dirent*, %struct.dirent** %3, align 8
  %24 = getelementptr inbounds %struct.dirent, %struct.dirent* %23, i32 0, i32 1
  %25 = bitcast i32* %24 to i8*
  %26 = load i8*, i8** %5, align 8
  %27 = call i32 @write_bytestream(i8* %25, i8* %26, i32 4)
  %28 = load i8*, i8** %5, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 4
  store i8* %29, i8** %5, align 8
  %30 = load %struct.dirent*, %struct.dirent** %3, align 8
  %31 = getelementptr inbounds %struct.dirent, %struct.dirent* %30, i32 0, i32 0
  %32 = bitcast i32* %31 to i8*
  %33 = load i8*, i8** %5, align 8
  %34 = call i32 @write_bytestream(i8* %32, i8* %33, i32 4)
  %35 = load i8*, i8** %5, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 4
  store i8* %36, i8** %5, align 8
  %37 = load i8*, i8** %5, align 8
  %38 = load i8*, i8** %4, align 8
  %39 = ptrtoint i8* %37 to i64
  %40 = ptrtoint i8* %38 to i64
  %41 = sub i64 %39, %40
  %42 = trunc i64 %41 to i32
  ret i32 %42
}

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

declare dso_local i32 @write_bytestream(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
