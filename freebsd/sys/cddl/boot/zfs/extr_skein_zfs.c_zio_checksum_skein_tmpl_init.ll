; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/boot/zfs/extr_skein_zfs.c_zio_checksum_skein_tmpl_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/boot/zfs/extr_skein_zfs.c_zio_checksum_skein_tmpl_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_3__*)* @zio_checksum_skein_tmpl_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @zio_checksum_skein_tmpl_init(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i8*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %4 = call i8* @malloc(i32 1)
  store i8* %4, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = call i32 @bzero(i8* %5, i32 1)
  %7 = load i8*, i8** %3, align 8
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @Skein_512_InitExt(i8* %7, i32 32, i32 0, i32 %10, i32 4)
  %12 = load i8*, i8** %3, align 8
  ret i8* %12
}

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @bzero(i8*, i32) #1

declare dso_local i32 @Skein_512_InitExt(i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
