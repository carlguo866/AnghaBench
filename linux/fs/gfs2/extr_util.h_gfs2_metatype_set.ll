; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_util.h_gfs2_metatype_set.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_util.h_gfs2_metatype_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer_head = type { i64 }
%struct.gfs2_meta_header = type { i8*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.buffer_head*, i32, i32)* @gfs2_metatype_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gfs2_metatype_set(%struct.buffer_head* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.buffer_head*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.gfs2_meta_header*, align 8
  store %struct.buffer_head* %0, %struct.buffer_head** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %9 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.gfs2_meta_header*
  store %struct.gfs2_meta_header* %11, %struct.gfs2_meta_header** %7, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call i8* @cpu_to_be32(i32 %12)
  %14 = load %struct.gfs2_meta_header*, %struct.gfs2_meta_header** %7, align 8
  %15 = getelementptr inbounds %struct.gfs2_meta_header, %struct.gfs2_meta_header* %14, i32 0, i32 1
  store i8* %13, i8** %15, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call i8* @cpu_to_be32(i32 %16)
  %18 = load %struct.gfs2_meta_header*, %struct.gfs2_meta_header** %7, align 8
  %19 = getelementptr inbounds %struct.gfs2_meta_header, %struct.gfs2_meta_header* %18, i32 0, i32 0
  store i8* %17, i8** %19, align 8
  ret void
}

declare dso_local i8* @cpu_to_be32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
