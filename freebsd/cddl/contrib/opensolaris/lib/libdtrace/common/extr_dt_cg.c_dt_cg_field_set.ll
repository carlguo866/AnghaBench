; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_cg.c_dt_cg_field_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_cg.c_dt_cg_field_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_16__ = type { i64, i32, %struct.TYPE_14__*, %struct.TYPE_13__* }
%struct.TYPE_14__ = type { i64, i32 }
%struct.TYPE_13__ = type { i32, i32* }
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_18__ = type { i32 }

@DT_TOK_PTR = common dso_local global i64 0, align 8
@DT_TOK_DOT = common dso_local global i64 0, align 8
@DT_NODE_IDENT = common dso_local global i64 0, align 8
@yypcb = common dso_local global %struct.TYPE_19__* null, align 8
@EDT_CTF = common dso_local global i32 0, align 4
@D_UNKNOWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"cg: bad field: off %lu type <%ld> bits %u\0A\00", align 1
@NBBY = common dso_local global i32 0, align 4
@DT_LBL_NONE = common dso_local global i32 0, align 4
@DIF_OP_AND = common dso_local global i32 0, align 4
@DIF_OP_SLL = common dso_local global i32 0, align 4
@DIF_OP_OR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, i32*, i32*, %struct.TYPE_16__*)* @dt_cg_field_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dt_cg_field_set(%struct.TYPE_16__* %0, i32* %1, i32* %2, %struct.TYPE_16__* %3) #0 {
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_17__, align 4
  %17 = alloca %struct.TYPE_18__, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store %struct.TYPE_16__* %3, %struct.TYPE_16__** %8, align 8
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @DT_TOK_PTR, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %32, label %26

26:                                               ; preds = %4
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @DT_TOK_DOT, align 8
  %31 = icmp eq i64 %29, %30
  br label %32

32:                                               ; preds = %26, %4
  %33 = phi i1 [ true, %4 ], [ %31, %26 ]
  %34 = zext i1 %33 to i32
  %35 = call i32 @assert(i32 %34)
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %36, i32 0, i32 2
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @DT_NODE_IDENT, align 8
  %42 = icmp eq i64 %40, %41
  %43 = zext i1 %42 to i32
  %44 = call i32 @assert(i32 %43)
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %45, i32 0, i32 3
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  store i32* %49, i32** %18, align 8
  %50 = load i32*, i32** %18, align 8
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %51, i32 0, i32 3
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @ctf_type_resolve(i32* %50, i32 %55)
  store i32 %56, i32* %20, align 4
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @DT_TOK_PTR, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %69

62:                                               ; preds = %32
  %63 = load i32*, i32** %18, align 8
  %64 = load i32, i32* %20, align 4
  %65 = call i32 @ctf_type_reference(i32* %63, i32 %64)
  store i32 %65, i32* %20, align 4
  %66 = load i32*, i32** %18, align 8
  %67 = load i32, i32* %20, align 4
  %68 = call i32 @ctf_type_resolve(i32* %66, i32 %67)
  store i32 %68, i32* %20, align 4
  br label %69

69:                                               ; preds = %62, %32
  %70 = load i32*, i32** %18, align 8
  store i32* %70, i32** %19, align 8
  %71 = load i32, i32* %20, align 4
  %72 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %72, i32 0, i32 2
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = call i32* @dt_cg_membinfo(i32* %70, i32 %71, i32 %76, %struct.TYPE_17__* %16)
  store i32* %77, i32** %18, align 8
  %78 = icmp eq i32* %77, null
  br i1 %78, label %79, label %91

79:                                               ; preds = %69
  %80 = load i32*, i32** %19, align 8
  %81 = call i32 @ctf_errno(i32* %80)
  %82 = load %struct.TYPE_19__*, %struct.TYPE_19__** @yypcb, align 8
  %83 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %82, i32 0, i32 1
  %84 = load %struct.TYPE_15__*, %struct.TYPE_15__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %84, i32 0, i32 0
  store i32 %81, i32* %85, align 4
  %86 = load %struct.TYPE_19__*, %struct.TYPE_19__** @yypcb, align 8
  %87 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @EDT_CTF, align 4
  %90 = call i32 @longjmp(i32 %88, i32 %89)
  br label %91

91:                                               ; preds = %79, %69
  %92 = load i32*, i32** %18, align 8
  %93 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %16, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = call i64 @ctf_type_encoding(i32* %92, i32 %94, %struct.TYPE_18__* %17)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %101, label %97

97:                                               ; preds = %91
  %98 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %17, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = icmp sgt i32 %99, 64
  br i1 %100, label %101, label %110

101:                                              ; preds = %97, %91
  %102 = load i32, i32* @D_UNKNOWN, align 4
  %103 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %16, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %16, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %17, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @xyerror(i32 %102, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %104, i32 %106, i32 %108)
  br label %110

110:                                              ; preds = %101, %97
  %111 = load i32*, i32** %7, align 8
  %112 = call i32 @dt_regset_alloc(i32* %111)
  store i32 %112, i32* %13, align 4
  %113 = load i32*, i32** %7, align 8
  %114 = call i32 @dt_regset_alloc(i32* %113)
  store i32 %114, i32* %14, align 4
  %115 = load i32*, i32** %7, align 8
  %116 = call i32 @dt_regset_alloc(i32* %115)
  store i32 %116, i32* %15, align 4
  %117 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %17, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @NBBY, align 4
  %120 = call i32 @P2ROUNDUP(i32 %118, i32 %119)
  %121 = load i32, i32* @NBBY, align 4
  %122 = sdiv i32 %120, %121
  %123 = call i32 @clp2(i32 %122)
  %124 = load i32, i32* @NBBY, align 4
  %125 = mul nsw i32 %123, %124
  %126 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %16, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @NBBY, align 4
  %129 = srem i32 %127, %128
  %130 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %17, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = add nsw i32 %129, %131
  %133 = sub nsw i32 %125, %132
  store i32 %133, i32* %11, align 4
  %134 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %17, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = zext i32 %135 to i64
  %137 = shl i64 1, %136
  %138 = sub i64 %137, 1
  %139 = trunc i64 %138 to i32
  store i32 %139, i32* %10, align 4
  %140 = load i32, i32* %10, align 4
  %141 = load i32, i32* %11, align 4
  %142 = shl i32 %140, %141
  %143 = xor i32 %142, -1
  store i32 %143, i32* %9, align 4
  %144 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %145 = load i32*, i32** %18, align 8
  %146 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %16, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @dt_cg_load(%struct.TYPE_16__* %144, i32* %145, i32 %147)
  %149 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %150 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 8
  %152 = load i32, i32* %13, align 4
  %153 = call i32 @DIF_INSTR_LOAD(i32 %148, i32 %151, i32 %152)
  store i32 %153, i32* %12, align 4
  %154 = load i32*, i32** %6, align 8
  %155 = load i32, i32* @DT_LBL_NONE, align 4
  %156 = load i32, i32* %12, align 4
  %157 = call i32 @dt_cg_node_alloc(i32 %155, i32 %156)
  %158 = call i32 @dt_irlist_append(i32* %154, i32 %157)
  %159 = load i32*, i32** %6, align 8
  %160 = load i32, i32* %14, align 4
  %161 = load i32, i32* %9, align 4
  %162 = call i32 @dt_cg_setx(i32* %159, i32 %160, i32 %161)
  %163 = load i32, i32* @DIF_OP_AND, align 4
  %164 = load i32, i32* %13, align 4
  %165 = load i32, i32* %14, align 4
  %166 = load i32, i32* %13, align 4
  %167 = call i32 @DIF_INSTR_FMT(i32 %163, i32 %164, i32 %165, i32 %166)
  store i32 %167, i32* %12, align 4
  %168 = load i32*, i32** %6, align 8
  %169 = load i32, i32* @DT_LBL_NONE, align 4
  %170 = load i32, i32* %12, align 4
  %171 = call i32 @dt_cg_node_alloc(i32 %169, i32 %170)
  %172 = call i32 @dt_irlist_append(i32* %168, i32 %171)
  %173 = load i32*, i32** %6, align 8
  %174 = load i32, i32* %14, align 4
  %175 = load i32, i32* %10, align 4
  %176 = call i32 @dt_cg_setx(i32* %173, i32 %174, i32 %175)
  %177 = load i32, i32* @DIF_OP_AND, align 4
  %178 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %179 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 8
  %181 = load i32, i32* %14, align 4
  %182 = load i32, i32* %14, align 4
  %183 = call i32 @DIF_INSTR_FMT(i32 %177, i32 %180, i32 %181, i32 %182)
  store i32 %183, i32* %12, align 4
  %184 = load i32*, i32** %6, align 8
  %185 = load i32, i32* @DT_LBL_NONE, align 4
  %186 = load i32, i32* %12, align 4
  %187 = call i32 @dt_cg_node_alloc(i32 %185, i32 %186)
  %188 = call i32 @dt_irlist_append(i32* %184, i32 %187)
  %189 = load i32*, i32** %6, align 8
  %190 = load i32, i32* %15, align 4
  %191 = load i32, i32* %11, align 4
  %192 = call i32 @dt_cg_setx(i32* %189, i32 %190, i32 %191)
  %193 = load i32, i32* @DIF_OP_SLL, align 4
  %194 = load i32, i32* %14, align 4
  %195 = load i32, i32* %15, align 4
  %196 = load i32, i32* %14, align 4
  %197 = call i32 @DIF_INSTR_FMT(i32 %193, i32 %194, i32 %195, i32 %196)
  store i32 %197, i32* %12, align 4
  %198 = load i32*, i32** %6, align 8
  %199 = load i32, i32* @DT_LBL_NONE, align 4
  %200 = load i32, i32* %12, align 4
  %201 = call i32 @dt_cg_node_alloc(i32 %199, i32 %200)
  %202 = call i32 @dt_irlist_append(i32* %198, i32 %201)
  %203 = load i32, i32* @DIF_OP_OR, align 4
  %204 = load i32, i32* %13, align 4
  %205 = load i32, i32* %14, align 4
  %206 = load i32, i32* %13, align 4
  %207 = call i32 @DIF_INSTR_FMT(i32 %203, i32 %204, i32 %205, i32 %206)
  store i32 %207, i32* %12, align 4
  %208 = load i32*, i32** %6, align 8
  %209 = load i32, i32* @DT_LBL_NONE, align 4
  %210 = load i32, i32* %12, align 4
  %211 = call i32 @dt_cg_node_alloc(i32 %209, i32 %210)
  %212 = call i32 @dt_irlist_append(i32* %208, i32 %211)
  %213 = load i32*, i32** %7, align 8
  %214 = load i32, i32* %15, align 4
  %215 = call i32 @dt_regset_free(i32* %213, i32 %214)
  %216 = load i32*, i32** %7, align 8
  %217 = load i32, i32* %14, align 4
  %218 = call i32 @dt_regset_free(i32* %216, i32 %217)
  %219 = load i32, i32* %13, align 4
  ret i32 %219
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ctf_type_resolve(i32*, i32) #1

declare dso_local i32 @ctf_type_reference(i32*, i32) #1

declare dso_local i32* @dt_cg_membinfo(i32*, i32, i32, %struct.TYPE_17__*) #1

declare dso_local i32 @ctf_errno(i32*) #1

declare dso_local i32 @longjmp(i32, i32) #1

declare dso_local i64 @ctf_type_encoding(i32*, i32, %struct.TYPE_18__*) #1

declare dso_local i32 @xyerror(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @dt_regset_alloc(i32*) #1

declare dso_local i32 @clp2(i32) #1

declare dso_local i32 @P2ROUNDUP(i32, i32) #1

declare dso_local i32 @DIF_INSTR_LOAD(i32, i32, i32) #1

declare dso_local i32 @dt_cg_load(%struct.TYPE_16__*, i32*, i32) #1

declare dso_local i32 @dt_irlist_append(i32*, i32) #1

declare dso_local i32 @dt_cg_node_alloc(i32, i32) #1

declare dso_local i32 @dt_cg_setx(i32*, i32, i32) #1

declare dso_local i32 @DIF_INSTR_FMT(i32, i32, i32, i32) #1

declare dso_local i32 @dt_regset_free(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
