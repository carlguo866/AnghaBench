; ModuleID = '/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zpl_super.c___zpl_show_options.c'
source_filename = "/home/carl/AnghaBench/zfs/module/os/linux/zfs/extr_zpl_super.c___zpl_show_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c",%s\00", align 1
@ZSB_XATTR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"xattr\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"noxattr\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, %struct.TYPE_3__*)* @__zpl_show_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__zpl_show_options(%struct.seq_file* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  %5 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @ZSB_XATTR, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  %12 = zext i1 %11 to i64
  %13 = select i1 %11, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)
  %14 = call i32 @seq_printf(%struct.seq_file* %5, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %13)
  ret i32 0
}

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
