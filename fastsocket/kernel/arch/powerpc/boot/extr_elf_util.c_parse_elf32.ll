; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/boot/extr_elf_util.c_parse_elf32.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/boot/extr_elf_util.c_parse_elf32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elf_info = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i64*, i64, i64, i32, i64 }
%struct.TYPE_3__ = type { i64, i32, i32, i32 }

@EI_MAG0 = common dso_local global i64 0, align 8
@ELFMAG0 = common dso_local global i64 0, align 8
@EI_MAG1 = common dso_local global i64 0, align 8
@ELFMAG1 = common dso_local global i64 0, align 8
@EI_MAG2 = common dso_local global i64 0, align 8
@ELFMAG2 = common dso_local global i64 0, align 8
@EI_MAG3 = common dso_local global i64 0, align 8
@ELFMAG3 = common dso_local global i64 0, align 8
@EI_CLASS = common dso_local global i64 0, align 8
@ELFCLASS32 = common dso_local global i64 0, align 8
@EI_DATA = common dso_local global i64 0, align 8
@ELFDATA2MSB = common dso_local global i64 0, align 8
@ET_EXEC = common dso_local global i64 0, align 8
@ET_DYN = common dso_local global i64 0, align 8
@EM_PPC = common dso_local global i64 0, align 8
@PT_LOAD = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @parse_elf32(i8* %0, %struct.elf_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.elf_info*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.elf_info* %1, %struct.elf_info** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %10, %struct.TYPE_4__** %6, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i64*, i64** %12, align 8
  %14 = load i64, i64* @EI_MAG0, align 8
  %15 = getelementptr inbounds i64, i64* %13, i64 %14
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @ELFMAG0, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %82

19:                                               ; preds = %2
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i64*, i64** %21, align 8
  %23 = load i64, i64* @EI_MAG1, align 8
  %24 = getelementptr inbounds i64, i64* %22, i64 %23
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @ELFMAG1, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %82

28:                                               ; preds = %19
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i64*, i64** %30, align 8
  %32 = load i64, i64* @EI_MAG2, align 8
  %33 = getelementptr inbounds i64, i64* %31, i64 %32
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @ELFMAG2, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %82

37:                                               ; preds = %28
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i64*, i64** %39, align 8
  %41 = load i64, i64* @EI_MAG3, align 8
  %42 = getelementptr inbounds i64, i64* %40, i64 %41
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @ELFMAG3, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %82

46:                                               ; preds = %37
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i64*, i64** %48, align 8
  %50 = load i64, i64* @EI_CLASS, align 8
  %51 = getelementptr inbounds i64, i64* %49, i64 %50
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @ELFCLASS32, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %82

55:                                               ; preds = %46
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i64*, i64** %57, align 8
  %59 = load i64, i64* @EI_DATA, align 8
  %60 = getelementptr inbounds i64, i64* %58, i64 %59
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @ELFDATA2MSB, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %82

64:                                               ; preds = %55
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @ET_EXEC, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %76, label %70

70:                                               ; preds = %64
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @ET_DYN, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %82

76:                                               ; preds = %70, %64
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @EM_PPC, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %83, label %82

82:                                               ; preds = %76, %70, %55, %46, %37, %28, %19, %2
  store i32 0, i32* %3, align 4
  br label %133

83:                                               ; preds = %76
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %85 = ptrtoint %struct.TYPE_4__* %84 to i64
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 4
  %88 = load i64, i64* %87, align 8
  %89 = add i64 %85, %88
  %90 = inttoptr i64 %89 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %90, %struct.TYPE_3__** %7, align 8
  store i32 0, i32* %8, align 4
  br label %91

91:                                               ; preds = %105, %83
  %92 = load i32, i32* %8, align 4
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 8
  %96 = icmp ult i32 %92, %95
  br i1 %96, label %97, label %110

97:                                               ; preds = %91
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @PT_LOAD, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %104

103:                                              ; preds = %97
  br label %110

104:                                              ; preds = %97
  br label %105

105:                                              ; preds = %104
  %106 = load i32, i32* %8, align 4
  %107 = add i32 %106, 1
  store i32 %107, i32* %8, align 4
  %108 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 1
  store %struct.TYPE_3__* %109, %struct.TYPE_3__** %7, align 8
  br label %91

110:                                              ; preds = %103, %91
  %111 = load i32, i32* %8, align 4
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 8
  %115 = icmp uge i32 %111, %114
  br i1 %115, label %116, label %117

116:                                              ; preds = %110
  store i32 0, i32* %3, align 4
  br label %133

117:                                              ; preds = %110
  %118 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.elf_info*, %struct.elf_info** %5, align 8
  %122 = getelementptr inbounds %struct.elf_info, %struct.elf_info* %121, i32 0, i32 2
  store i32 %120, i32* %122, align 4
  %123 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.elf_info*, %struct.elf_info** %5, align 8
  %127 = getelementptr inbounds %struct.elf_info, %struct.elf_info* %126, i32 0, i32 1
  store i32 %125, i32* %127, align 4
  %128 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 8
  %131 = load %struct.elf_info*, %struct.elf_info** %5, align 8
  %132 = getelementptr inbounds %struct.elf_info, %struct.elf_info* %131, i32 0, i32 0
  store i32 %130, i32* %132, align 4
  store i32 1, i32* %3, align 4
  br label %133

133:                                              ; preds = %117, %116, %82
  %134 = load i32, i32* %3, align 4
  ret i32 %134
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
