; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_pbi_bb.c_PBI_BB_WriteConfig.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_pbi_bb.c_PBI_BB_WriteConfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [18 x i8] c"BLACK_BOX_ROM=%s\0A\00", align 1
@bb_rom_filename = common dso_local global i8* null, align 8
@bb_scsi_disk_filename = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"BB_SCSI_DISK=%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @PBI_BB_WriteConfig(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32*, i32** %2, align 8
  %4 = load i8*, i8** @bb_rom_filename, align 8
  %5 = call i32 @fprintf(i32* %3, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* %4)
  %6 = load i8*, i8** @bb_scsi_disk_filename, align 8
  %7 = call i32 @Util_filenamenotset(i8* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %1
  %10 = load i32*, i32** %2, align 8
  %11 = load i8*, i8** @bb_scsi_disk_filename, align 8
  %12 = call i32 @fprintf(i32* %10, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* %11)
  br label %13

13:                                               ; preds = %9, %1
  ret void
}

declare dso_local i32 @fprintf(i32*, i8*, i8*) #1

declare dso_local i32 @Util_filenamenotset(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
